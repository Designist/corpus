module FreqBrown where

import Data.Map (Map)
import qualified Data.Map as Map
import qualified System.IO as IO
import FreqList

-- freqBrown :: Num a => String -> IO (Maybe a)
-- I/P : word, a word
-- O/P : the frequency of word in the Brown corpus
freqBrown word = do h <- IO.openFile "brown.txt" IO.ReadMode
                    c <- IO.hGetContents h
                    return (Map.lookup word (freqList (words c)))
