{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    rustup
    gcc
    pkg-config
    python3
    just
    nodejs
 
    cargo-tauri
    sqlx-cli
    trunk   
    
    git
    lazygit
    gh

    neovim
    ripgrep
    # lsp
    nixd

    tmux

    zed-editor
  ];

  # forces nix to use fish shell instead of bash when running `nix develop`
  #environment.variables = {
  #  NIX_BUILD_SHELL = "fish";
  #};
}
