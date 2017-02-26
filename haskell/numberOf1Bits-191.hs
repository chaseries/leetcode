import Utils (intToBinaryString)


hammingWeight :: Int -> Int
hammingWeight i = length $ filter (== '1') (intToBinaryString i)
