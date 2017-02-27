
type Row = String
type Keyboard = [Row]

americanKeyboard = [ "qwertyuiopQWERTYUIOP" 
                   , "asdfghjklASDFGHJKL"
                   , "zxcvbnmZXCVBNM"
                   ]

areAllCharsInRow :: String -> Row -> Bool
areAllCharsInRow word row = all ((flip elem) row) word

isWordInSingleRow :: String -> Keyboard -> Bool
isWordInSingleRow word kb = any (areAllCharsInRow word) kb

wordsInSingleRow :: [String] -> Keyboard -> [String]
wordsInSingleRow words kb = filter ((flip isWordInSingleRow) kb) words

wordsInSingleRowAmerican :: [String] -> [String]
wordsInSingleRowAmerican = \words -> wordsInSingleRow words americanKeyboard
