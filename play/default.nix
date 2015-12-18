{ mkDerivation, stdenv, base, hs-opencv-binding }:
mkDerivation {
  pname = "play";
  version = "0.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base hs-opencv-binding ];
  license = stdenv.lib.licenses.bsd3;
}
