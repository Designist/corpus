-- | Primitive parsing function for input.

module SplitTokenize where

-- splitTokenize :: String -> [[String]]
-- I/P : text, a string of text
-- O/P : a list of lists, where each sublist represents a new line,
--       and the contents of the list are the words in the line
splitTokenize text = map words (lines text)
