-- Interpreter for LambdaNat5
-- numbers, conditionals, recursion, lists
{-# LANGUAGE StandaloneDeriving, DeriveDataTypeable, TypeApplications, 
ExplicitForAll, ScopedTypeVariables #-}


module Interpreter where

import AbsLambdaNat
import ErrM
import PrintLambdaNat

import Data.Map ( Map )
import qualified Data.Map as M

import Data.Data
import Data.Generics.Traversable
import qualified Data.Set as S

deriving instance Data Id 
deriving instance Data Exp 


execCBN :: Program -> Exp
execCBN (Prog e) = evalCBN e

evalCBN :: Exp -> Exp
evalCBN (EApp e1 e2) = case (evalCBN e1) of
    (EAbs i e1') -> evalCBN (subst i e2 e1')
    e1' -> EApp e1' e2
evalCBN (EIf e1 e2 e3 e4) = if (evalCBN e1) == (evalCBN e2) then evalCBN e3 else evalCBN e4
evalCBN (ELet i e1 e2) = evalCBN (EApp (EAbs i e2) e1) 
evalCBN (ERec i e1 e2) = evalCBN (EApp (EAbs i e2) (EFix (EAbs i e1)))
evalCBN (EFix e) = evalCBN (EApp e (EFix e)) 
evalCBN (EMinusOne e) = case (evalCBN e) of
    ENat0 -> ENat0
    (ENatS e) -> e
evalCBN (ENatS e') = ENatS (evalCBN e')
evalCBN x = x

newtype IDM m a = IDM{unIDM :: m}

-- The following code should need no modification
-- Read at your own peril
-- The use of "traverse" allows us to not write
--   code for trivial case, see also subst below

efoldMap :: forall a m. (Data a, Monoid m) => (a -> m) -> a -> m
efoldMap f x = traverse f x
    where
        traverse :: (Data a, Data b, Monoid m) => (a -> m) -> b -> m
        traverse f x = unIDM $ gfoldl (k f) z x
        z :: Monoid m => g -> IDM m g
        z _ = IDM mempty
        k :: Data d => (a -> m) -> IDM m (d -> b) -> d -> IDM m b
        k f (IDM m) d = case cast d of
            Just a  -> IDM (m <> f a)
            Nothing -> IDM m

fresh_ :: Exp -> [String]
fresh_ (EVar (Id i)) = [i]
fresh_ (EAbs (Id i) e) = i:fresh_ e
fresh_ e = efoldMap fresh_ e

fresh = Id . (pickFresh $ infList) . S.fromList . fresh_
  where
    pickFresh :: [String] -> S.Set String -> String
    pickFresh (x:xs) ys | x `S.member` ys = pickFresh xs ys
                        | otherwise = x
    infList = map (:[]) ['a'..'z'] ++ infList_ 1
    infList_ n = map (\a -> a : show n) ['a'..'z'] ++ infList_ (n+1)

newtype ID a = ID{unID :: a}

-- adapted form this brilliant article: http://okmij.org/ftp/Haskell/generics.html
-- emap is nonparametric (see the link), but we don't care, since we only want to 
-- apply it to nonparametric types like Exp anyway.
-- We could fix this by adding a constraint like NonParametric a ~ 'True, where
-- NonParametric is defined as:
-- type family NonParametric (a :: k) where
--     NonParametric (a b) = 'False
--     NonParametric a = 'True
-- but this needs DataKinds and TypeFamilies
-- which would break the definition below...

emap :: (Data a) => (a -> a) -> a -> a
emap f x = traverse x
    where
        traverse :: Data a => a -> a
        traverse x = unID $ gfoldl k z x
        z = ID
        k (ID ca) b  = case castfn f of
            Just fb -> ID (ca (fb b))
            Nothing -> ID (ca b)

        castfn :: (Typeable a, Typeable b, Typeable c, Typeable d) =>
               (a -> b) -> Maybe (c -> d)
        castfn f = cast f

subst :: Id -> Exp -> Exp -> Exp
subst id s e@(EVar id') | id == id' = s
                      | otherwise = e
subst id s e@(EAbs id' e') = 
    -- to avoid variable capture, we first substitute id' with a fresh name inside the body
    -- of the λ-abstraction, obtaining e''. 
    -- Only then do we proceed to apply substitution of the original s for id in the 
    -- body e''.

    -- writing `fresh (EApp (EVar id) (EApp e s))` is a roundabout way of saying the fresh
    -- variable must be fresh in id, e and s!
    let f = fresh (EApp (EVar id) (EApp e s)) 
        e'' = subst id' (EVar f) e' in 
        EAbs f $ subst id s e''
subst id s e = emap (subst id s) e

-- the trick with emap and traverse makes the code below unnessary:
--
-- subst id s (EApp e1 e2) = EApp (subst id s e1) (subst id s e2)
-- subst id s (ENat0) = ENat0 
-- subst id s (ENatS e) = ENatS (subst id s e) 
-- subst id s (EIf e1 e2 e3 e4) = EIf (subst id s e1) (subst id s e2) (subst id s e3) (subst id s e4)
-- -- subst id s (ELet i e1 e2) = subst id s (EApp (EAbs i e1) e2)
-- -- subst id s (ERec i e1 e2) = subst id s (EApp (EAbs i e2) (EFix (EAbs i e1)))
-- subst id s (EFix e) = EFix (subst id s e)
-- subst id s (EMinusOne e) = EMinusOne (subst id s e)
-- subst id s (EHd e) = EHd (subst id s e)
-- subst id s (ETl e) = ETl (subst id s e)
-- subst id s ENil = ENil
-- subst id s (ECons e l) = ECons (subst id s e) (subst id s l)
