-- addWord :: Eq a => a -> [a] -> [a]
-- I/P : word, a word
--       alow, a list of words
-- O/P : a new list containing word and the elements of alow
addWord word alow = if (elem word alow)
                         then alow
                      else word : alow
