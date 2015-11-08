-- | Finds bigrams of a list of words.

module Bigram where

-- I/P : alow, a list of words
-- O/P : the bigrams of alow
bigram :: [a] -> [[a]]
bigram []  = []
bigram [_] = []
bigram xs = take 2 xs : bigram (tail xs)