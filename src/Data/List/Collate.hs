module Data.List.Collate where

import Data.List (concat, transpose)
import Data.List.Split (chunksOf)

-- | Interleave alternating elements of first and second lists
interleave :: [a] -> [a] -> [a]
interleave [] ys = ys
interleave xs [] = xs
interleave (x:xs) ys = x:(interleave ys xs)

-- | @interleave@ first half of list with second half
interleaveHalves :: [a] -> [a]
interleaveHalves ls =
  let mid = length ls `div` 2
      (top, bot) = (take mid ls, drop mid ls)
   in interleave top bot

-- | Inverse operation of @interleaveHalves@
uninterleaveHalves :: [a] -> [a]
uninterleaveHalves = concat . transpose . chunksOf 2
