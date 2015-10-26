-- | Finds bigrams of a list of words.

module Bigram where

-- I/P : alow, a list of words
-- O/P : the bigrams of alow
bigram :: [a] -> [[a]]
bigram [] = []
bigram alow = take 2 alow : bigram (tail alow)
