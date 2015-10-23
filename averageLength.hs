-- averageLength : (Fractional b) => [[a]] -> b
-- I/P : ls, a list of strings
-- O/P : the average length of strings in ls
averageLength alos  = fromIntegral (sum (map length alos)) /
                      fromIntegral (length alos)
