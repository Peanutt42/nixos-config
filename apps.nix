{ pkgs, ... }:

{
  programs = {
    firefox.enable = true;
    fish.enable = true;

    neovim.enable = true;
  };

  environment.systemPackages = with pkgs; [
    appimage-run

    thunderbird
    zoxide
    fastfetch
    just
    kitty
    git
    lazygit
    gh
    stow
    starship
    zed-editor
    rclone
  ];
}
