module FreqList where

import Data.Map (Map)
import qualified Data.Map as Map
import CountElem

-- freqList :: (Ord k) => [k] -> Data.Map.Map k Int
-- I/P : alow, a list of words
-- O/P : the frequency map of words in alow
freqList alow = foldl countElem Map.empty alow
