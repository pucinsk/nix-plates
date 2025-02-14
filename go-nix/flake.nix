{
  description = "Go Lang environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
  let
    pkgs = nixpkgs.legacyPackages.aarch64-darwin;
  in
  {
    devShells.aarch64-darwin.default = pkgs.mkShell {
      packages = with pkgs; [
        git
        go
      ];

      shellHook = ''
        echo "We are ready to Go!"
      '';
    };
  };
}
