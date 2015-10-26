-- | Finds all sentence-order tuples of words in a list.

module SkipBigrams where

-- I/P : alow, a list of words
-- O/P : the set of sentence-order tuples of alow
skipBigrams :: [a] -> [(a,a)]
skipBigrams [] = []
skipBigrams (x:alow) = [(x,y) | y <- alow] ++ skipBigrams alow
