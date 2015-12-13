-- | Finds the collocations in a list of words.

module Collocations where

import Data.Map (Map)
import qualified Data.Map as Map

import FreqBigram
import FreqList

--
-- I/P : alow, a list of words
-- O/P : the collocations of alow
collocations alow =
  let f key = Map.lookup key (freqList alow)
  in Map.mapWithKey f (freqBigram alow)