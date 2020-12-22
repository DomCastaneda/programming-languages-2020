# Week 4 Blog
**Installing BNFC on macOS**
Here is my experience with installing BNFC on my MacBook Pro. 

Before you start, you must have Haskell already installed on your system. In order to follow the first step in terminal, I needed to download Homebrew from https://brew.sh/. I had to figure this part out because brew was not working as a command in terminal so I had to look up what it was and when I downloaded this, I was able to run the command. The next step would be to run in terminal:

```
brew install bnfc
```

Then take a grammar such as myfile.cf and run it in terminal:

```
bnfc -m --haskell numbers.cf
make
```

Mine actually didn't work with the alex error so I had to run :

```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
  cabal install alex 
  cabal install happy 
```

This worked after a couple tries but I forget why it worked on the 3rd time of repeating this step. I followed the terminal directions but I actually had to reinstall Haskell in order for this part to fix. 

With BNFC, I was able to generate a parser for my calculator by running the code:

```
bnfc -m -haskell numbers.cf
make
```

