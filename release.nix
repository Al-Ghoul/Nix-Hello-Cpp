{
  nixpkgs,
  helloSrc
}:
let 
  pkgs = import nixpkgs { system = builtins.currentSystem or "x86_64-linux"; };
  jobs = rec {
    tarball = pkgs.releaseTools.sourceTarball {
      name = "hello-nix-tarball";
      src = helloSrc;
      doDist = false;
      buildInputs = [ pkgs.clang ];
    };
    
    build = { system ? builtins.currentSystem }:
    pkgs.releaseTools.nixBuild {
      name = "nix-hello";
      src = jobs.tarball;
    };
  };
in
  jobs
