module Utils where

import Numeric (showIntAtBase)
import Data.Char (intToDigit)

intToBinaryString :: Int -> String
intToBinaryString i = showIntAtBase 2 intToDigit i ""

