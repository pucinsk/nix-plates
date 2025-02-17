{
  description = "Ruby on Rails development environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages.aarch64-darwin;
    in
    {
      devShells.aarch64-darwin.default = pkgs.mkShell {
        env = {
          BUNDLE_PATH = "./vendor/gems";
          GEM_HOME = "./vendor/gems";
          GEM_PATH = "./vendor/gems";
        };


        packages = with pkgs; [
          git
          gnumake
          gmp
          rustc
          libyaml
          libz
          openssl_3
          ruby_3_4
        ];

        shellHook = ''
          export PATH=$BUNDLE_PATH/bin:$PATH
          mkdir -p ./vendor/gems
          echo "We are ready to Rail away!"
        '';
      };
    };
}
