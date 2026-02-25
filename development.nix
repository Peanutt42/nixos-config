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
}
