module AddWord where

-- addWord :: Eq a => a -> [a] -> [a]
-- I/P : alow, a list of words
--       word, a word
-- O/P : a new list containing word and the elements of alow
addWord alow word = if (elem word alow) then alow
                    else word : alow
