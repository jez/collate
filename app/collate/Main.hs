module Main where

import qualified Data.Text as T
import qualified Data.Text.IO as TIO

import Data.List.Collate (interleaveHalves)

main :: IO ()
main = do
  ls <- T.lines <$> TIO.getContents
  mapM_ TIO.putStrLn $ interleaveHalves ls

