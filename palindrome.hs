-- palindrome :: Eq a => [a] -> Bool
-- I/P : word, a list of characters
-- O/P : true, if word is a palindrome
--       false, otherwise
palindrome word = (word == reverse word)
