module Utils where

import Numeric (showIntAtBase)
import Data.Char (intToDigit)

intToBinaryString :: (Integral a, Show a) => a -> String
intToBinaryString i = showIntAtBase 2 intToDigit i ""

binaryStringToInt :: (Integral a, Show a) => String -> a
binaryStringToInt = foldr (\c s -> s * 2 + c) 0 . reverse . map c2i
    where c2i c = if c == '0' then 0 else 1
