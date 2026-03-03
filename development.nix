{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rustup
    gcc

    python3

    # lsp
    nixd

    nodejs

    cargo-tauri
    sqlx-cli
    trunk

    pkg-config
  ];

  # forces nix to use fish shell instead of bash when running `nix develop`
  environment.variables = {
    NIX_BUILD_SHELL = "fish";
  };
}
