{ stdenv, pkgs, fetchFromGitHub }:

stdenv.mkDerivation { 
  name = "Cpp-Hello";

  src = fetchFromGitHub {
    owner = "Al-Ghoul";
    repo = "Nix-Hello-Cpp";
    rev = "09aeff6";
    sha256 = "sha256-rzzSnJN6G2Rvgs1azhTtkk6Wz8hp76VHpsHGP0XsHLs=";
  };

  buildInputs = [ pkgs.clang ] ;

  installPhase = ''
    mkdir -p $out/bin
    cp hello $out/bin
  '';
}
