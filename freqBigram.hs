-- | Finds the frequency map of a list of bigrams.

module FreqBigram where

import Data.Map (Map)
import qualified Data.Map as Map

import Bigram
import FreqList

-- freqBigram :: (Ord k) => [k] -> Data.Map.Map k Int
-- I/P : alow, a list of words
-- O/P : the frequency map of bigrams of alow
freqBigram alow = foldl countElem Map.empty (bigram alow)