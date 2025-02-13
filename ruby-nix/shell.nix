{
    pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
    name = "ruby-nix-environment";
    buildInputs = [
        pkgs.ruby_3_4
    ];
    shellHook = ''
        ruby -v
        echo "Ruby is ready ✅"
    '';
}
