{
  description = "Search&replace across multiple files";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-21.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in rec {
        packages = flake-utils.lib.flattenTree {
          minised = pkgs.python3Packages.buildPythonPackage rec {
            pname = "minised";
            version = "0.1.0";
            src = nixpkgs.lib.cleanSource ./.;
            nativeBuildInputs = with pkgs.python3.pkgs; [
            ];
            propagatedBuildInputs = with pkgs.python3.pkgs; [
              tkinter
            ];
           };
        };
        defaultPackage = packages.minised;
      });
}
