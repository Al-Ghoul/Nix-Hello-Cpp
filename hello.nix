{ 
  stdenv,
  pkgs,
  helloSrc ? builtins.fetchTarball https://github.com/al-ghoul/Nix-Hello-Cpp/archive/main.tar.gz
}:

stdenv.mkDerivation { 
  name = "Cpp-Hello";

  src = helloSrc; 
 
  buildInputs = [ pkgs.clang ] ;

  installPhase = ''
    mkdir -p $out/bin
    cp hello $out/bin
  '';
}
