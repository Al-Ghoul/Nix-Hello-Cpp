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
    };
    
    build = { system ? builtins.currentSystem }:
      pkgs.releaseTools.nixBuild {
        name = "nix-hello";
        src = jobs.tarball;
        buildInputs = [ pkgs.clang ];
        installPhase = ''
          mkdir -p $out/bin
          cp hello $out/bin
          '';
      };
  };
in
  jobs
