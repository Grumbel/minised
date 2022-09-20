{
  description = "Search&replace across multiple files";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages = rec {
          default = minised;

          minised = pkgs.python3Packages.buildPythonPackage rec {
            pname = "minised";
            version = "0.1.0";

            src = nixpkgs.lib.cleanSource ./.;

            propagatedBuildInputs = with pkgs.python3Packages; [
              tkinter
            ];
           };
        };
      }
    );
}
