{ mkDerivation, stdenv, opencv, base }:
mkDerivation {
  pname = "hs-opencv-binding";
  version = "0.0.0";
  src = ./.;
  libraryHaskellDepends = [ base];
  libraryPkgconfigDepends = [ opencv ];
  license = stdenv.lib.licenses.bsd3;
}
