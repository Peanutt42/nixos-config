{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rustup
    gcc

    # lsp
    nixd

    nodejs

    cargo-tauri
    sqlx-cli
    trunk

    pkg-config
  ];
}
