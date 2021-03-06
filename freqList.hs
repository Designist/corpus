-- | Finds the frequency map of a list of words.

module FreqList where

import Data.Map (Map)
import qualified Data.Map as Map

-- countElem :: (Ord k) => Data.Map.Map k Int -> k -> Data.Map.Map k Int
-- I/P : base, a base map to be passed; usually Data.Map.empty
--       alow, a list of words
-- O/P : the base value with the frequency of alow
countElem base alow = case (Map.lookup alow base) of
                       Just v -> Map.insert alow (v + 1) base
                       Nothing -> Map.insert alow 1 base

-- freqList :: (Ord k) => [k] -> Data.Map.Map k Int
-- I/P : alow, a list of words
-- O/P : the frequency map of words in alow
freqList alow = foldl countElem Map.empty alow
