module RemoveDuplicates where
import AddWord

-- removeDuplicates :: (Eq a, Foldable t) => t a -> [a]
-- I/P : alow, a list of words
-- O/P : alow with duplicates removed
removeDuplicates alow = foldl addWord [] alow
