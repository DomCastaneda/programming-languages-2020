------------------
-- NATURAL NUMBERS
------------------

data NN = O | S NN
    deriving (Eq,Show)

-- addition
add :: NN -> NN -> NN
add O n = n
add (S n) m = S (add n m)

-- multiplication
mult :: NN -> NN -> NN
mult O n = O
mult (S O) n = n
mult (S n) m = add m (mult n m)

-- subtract 
subtr :: NN -> NN -> NN
subtr O n = O
subtr n O = n
subtr (S n) (S m) = subtr n m

-- less n m if n < m
-- use recursion on NN
less :: NN -> NN -> Bool
less O n = False
less (S n) (S m) = less n m

-- greatest common divisor
-- implement Euclid's algorithm, allow gcdN O O = O to make it simpler
-- use recursion on NN
gcdN :: NN -> NN -> NN
gcdN O n = O
gcdN n O = n
gcdN n m = if less n m then n else (gcdN(subtr n m)m)

-------------------
-- POSITIVE NUMBERS
-------------------

data PN = I | T PN
    deriving (Eq,Show)

-- addition of positive numbers
-- use recursion over PN
addP :: PN -> PN -> PN
addP I n = T n
addP (T n) m = T (addP n m)

-- multiplication of positive numbers
-- use recursion over PN
multP :: PN -> PN -> PN
multP I n = n
multP (T n) m = addP m(multP n m)

-- lessP n m if n < m
-- use recursion over PN
lessP :: PN -> PN -> Bool
lessP n I = False
lessP (T n) (T m) = lessP n m

-- subtract a positive number from a natural number
-- use recursion over NN
subtrNP :: NN -> PN -> NN
subtrNP O n = O
subtrNP (S n) I = n
subtrNP (S n) (T m) = subtrNP n m

-- divide a natural number by a positive number
-- use recursion over NN
divP :: NN -> PN -> NN
divP O n = O
divP n I = n
divP n m = S(divP (subtrNP n m)m)

-- convert from PN to NN
-- use recursion over PN
p2n :: PN -> NN
-- I becomes S O because PN conversion to NN
p2n I = (S O)
p2n (T n) = S(p2n n)

-- convert from NN to PN
-- use recursion over NN
-- allow runtime error if NN is O
n2p :: NN -> PN
--opposite of PN to NN conversion
n2p (S O) = I
n2p (S n) = T(n2p n)

------------
-- FRACTIONS
------------

-- non-negative fractions
-- a fraction is a pair (numerator,denominator)
type Frac = (NN,PN)

-- multiply fractions
-- recall from school how to multiply fractions
multF :: Frac -> Frac -> Frac
multF p q = ((mult(fst p)(fst q)),(multP (snd p)(snd q)))

-- add fractions
-- recall from school how to add fractions
addF :: Frac -> Frac -> Frac
addF p q = (add(mult(fst p)(p2n(snd q)))(mult(p2n(snd p))(fst q)),(multP(snd p)(snd q)))

-- equality of fractions
-- recall from school how to check that two fractions are equal
equalF :: Frac -> Frac -> Bool
equalF p q = (mult (fst p)(p2n(snd q))) == (mult(p2n(snd p))(fst q))

-- simplify fractions
-- divide numerator and denominator by the gcd of both
--simplifyF :: Frac -> Frac
                            --im confused on how to divide the fractions--
--simplifyF (p,q) = if (simplifyF(fst p)(fst q))==(simplifyF(snd p)(snd q)) then (p,q) else if (simplifyF(fst p)(fst q))<(simplifyF(snd p)(snd q)) then (p,q-p) else (p-q,q)
--------------
-- FOR TESTING
--------------

-- use recursion on NN
nn2int :: NN -> Int
nn2int O = 0
nn2int (S n) = (1+(nn2int n))

-- use recursion on Int
-- allow runtime error for negative numbers
int2nn :: Int -> NN
int2nn 0 = O
int2nn n = S(int2nn(n-1))

-- use recursion on Int
-- allow runtime error for non-positive numbers
int2pn :: Int -> PN
int2pn 1 = I
int2pn n = T(int2pn(n-1))

-- use int2nn and int2pn
ints2frac :: (Int,Int) -> Frac
ints2frac (n,p) = (int2nn n, int2pn p)


-- use nn2int 
frac2ints :: Frac -> (Int,Int)
frac2ints x = (nn2int (fst x), nn2int(p2n(snd x)))

-- Some examples (make your own):
-- 
-- frac2ints (addF (ints2frac (2,3)) (ints2frac (6,8)))
-- equalF (ints2frac (2,6)) (ints2frac (1,3))
-- addF (ints2frac (36,60)) (ints2frac (24,45))
-- simplifyF (addF (ints2frac (36,60)) (ints2frac (24,45)))
-- frac2ints(simplifyF (addF (ints2frac (36,60)) (ints2frac (24,45))))