{-# LANGUAGE TemplateHaskell #-}

module Main ( main ) where

import OpenCV
import Control.Lens

data MyRecord = MyRecord {_field1 :: Bool}

-- Enabling the following splice results in the following error when running `cabal build`:
--
--   ghc: /nix/store/1wyif1adq0pb9h08jqr0v5lrykfhdhah-opencv-3.0.0/lib/libopencv_hal.a: unknown symbol `_ZGVZN2cv9v_invsqrtERKNS_11v_float32x4EE4_0_5'
--   ghc: unable to load package `hs-opencv-binding-0.0.0'
--
-- Note that according to http://demangler.com/ the mangled symbol `_ZGVZN2cv9v_invsqrtERKNS_11v_float32x4EE4_0_5' demangles to:
--
--   guard variable for cv::v_invsqrt(cv::v_float32x4 const&)::_0_5
--
makeLenses ''MyRecord

main :: IO ()
main = putStrLn "Hello World!"
