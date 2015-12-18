A test case for [GHC ticket #9010](https://ghc.haskell.org/trac/ghc/ticket/9010#comment:6).

The problem is that building `./play` results in the following error:

    ghc: /nix/store/1wyif1adq0pb9h08jqr0v5lrykfhdhah-opencv-3.0.0/lib/libopencv_hal.a: unknown symbol `_ZGVZN2cv9v_invsqrtERKNS_11v_float32x4EE4_0_5'
    ghc: unable to load package `hs-opencv-binding-0.0.0'

The error disappears when all TemplateHaskell splices are disabled.

Run `nix-build` to trigger the bug.

You can also run `nix-shell -A env` to enter a development environment to work on `./play`.
