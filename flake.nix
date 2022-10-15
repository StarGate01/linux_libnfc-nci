{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      devShell.x86_64-linux =
        pkgs.mkShell {
          shellHook = ''
          '';

          buildInputs = with pkgs; [
            gdb
            gcc
            cmake
            libusb1
            libusb-compat-0_1
            pkg-config
            clang-tools
            autoconf
            automake
            gnumake
            gnum4
            libtool
          ];
        };
    };
}
