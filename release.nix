{
  helloSrc ? builtins.fetchTarball https://github.com/al-ghoul/Nix-Hello-Cpp/archive/main.tar.gz
}:
let 
  pkgs = (import <nixpkgs> { system = builtins.currentSystem or "x86_64-linux"; });
  jobs = rec {
    build = pkgs.stdenv.mkDerivation { 
      name = "Cpp-Hello";

      src = helloSrc; 

      buildInputs = [ pkgs.clang ] ;

      installPhase = ''
        runHook preInstall
        mkdir -p $out/bin
        cp hello $out/bin
        runHook postInstall
      '';
    };
  };
in
  jobs
