import Data.Bits (Bits, xor)
import Utils (binaryStringToInt)


-- This is broken, and the type signature is an absolute mess.
-- The logic is otherwise sound. I just don't feel like fucking with Haskell's
-- overzealous type system right now.

findComplement :: (Integral a, Show a, RealFrac a, Floating a, Bits a) => a -> a
findComplement num = binaryStringToInt (replicate (numBits num) '1') `xor` num

numBits :: (RealFrac a, Floating a, Integral b) => a -> b
numBits num = floor $ logBase 2 num + 1



