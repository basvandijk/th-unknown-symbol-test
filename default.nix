let pkgs = import <nixpkgs> {};
in pkgs.haskellPackages.callPackage ./play {
     hs-opencv-binding = pkgs.haskellPackages.callPackage ./hs-opencv-binding {};
   }
