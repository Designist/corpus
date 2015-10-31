-- | Generates a list of ngrams in a given list of data

module Ngrams where

-- I/P : n, the number of words in each n-gram
--      alow, a list of words
-- O/P : a list of lists, where each sublist is a set of
--       n consecutive words in alow
ngrams :: Int -> [a] -> [[a]]
ngrams 0 _  = []
ngrams _ [] = []
ngrams n alow
  | length ngram == n = ngram : ngrams n (tail alow)
  | otherwise = []
  where
    ngram = take n alow
