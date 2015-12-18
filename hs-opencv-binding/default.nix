{ mkDerivation, stdenv, opencv3, base }:
mkDerivation {
  pname = "hs-opencv-binding";
  version = "0.0.0";
  src = ./.;
  libraryHaskellDepends = [ base];
  libraryPkgconfigDepends = [ opencv3 ];
  license = stdenv.lib.licenses.bsd3;
}
