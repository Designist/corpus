module TypeToken where

import qualified Data.Set
import SplitTokenize

-- typeToken ::
-- I/P : str, a string of text
-- O/P : tt-ratio, defined as the number of distinct tokens
--       divided by the total number of tokens
typeToken str = fromIntegral length (Data.Set.fromList (splitTokenize str)) /
                fromIntegral length (splitTokenize str)
