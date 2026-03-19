{ pkgs, ... }:

{
  programs = {
    firefox.enable = true;
    fish.enable = true;
  };

  environment.systemPackages = with pkgs; [
    appimage-run
    unzip

    thunderbird

    starship
    zoxide
    fastfetch
    kitty
    
    stow
    
    rclone

    sioyek

    htop
    btop
  ];
}
