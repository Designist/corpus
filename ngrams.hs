module Ngrams where


-- I/P : n, the number of words in each n-gram
-- O/P : alow, a list of words
ngrams :: Int -> [a] -> [[a]]
ngrams 0 _  = []
ngrams _ [] = []
ngrams n alow
  | length ngram == n = ngram : ngrams n (tail alow)
  | otherwise = []
  where
    ngram = take n alow
