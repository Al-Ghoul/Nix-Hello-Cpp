{
  description = "Nix-Cpp-Hello hydra build.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
        pkgs = import nixpkgs {
            system = "x86_64-linux";
        };
    in
        {
            hydraJobs = rec {
                build = with pkgs;
                    stdenv.mkDerivation {
                        name = "Cpp-Hello";
                        src = self;
                        version = "1.0.0";
                        
                        buildInputs = [ clang ];

                        installPhase = ''
                            runHook preInstall
                            mkdir -p $out/bin
                            cp hello $out/bin
                            runHook postInstall
                        '';

                        passthru.tests.run = runCommand "hello-test" { nativeBuildInputs = [ build ]; }
                        ''
                          diff -U3 --color=auto <(hello) <(echo 'Hello Abdo .AlGhoul!')
                          touch $out
                        '';
                    };
                tests = build.tests;
            };
        };
}
