import Data.Bits (xor)
import Utils

hammingDistance :: Int -> Int -> Int
hammingDistance x y = length $ filter (== '1') (intToBinaryString $ xor x y)
