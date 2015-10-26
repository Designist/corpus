module FreqBrown where

import qualified System.IO as IO
import freqList

----------------------------------------
h <- IO.openFile "brown.txt" IO.ReadMode
c <- IO.hGetContents h
----------------------------------------

-- freqBrown :: 
-- I/P : word, a word
-- O/P : the frequency of word in the Brown corpus
freqBrown = Data.Map.lookup "the" (freqList (words c))
