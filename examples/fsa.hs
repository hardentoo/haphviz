{-# LANGUAGE OverloadedStrings #-}

import           Text.Dot
import           Text.Dot.Gen.FSA

import qualified Data.Text.IO     as T


main :: IO ()
main = T.putStrLn $ renderGraph g

g :: DotGraph
g = fsaGraph
        [a, b, c]
        a
        [b]
        [(a, b, p), (b, b, q), (b, c, p)]

  where
    a = "a"
    b = "b"
    c = "c"
    p = "p"
    q = "q"




