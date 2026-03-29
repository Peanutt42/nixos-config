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
    zapzap
    vesktop

    bitwarden-desktop
    ente-auth

    localsend

    obs-studio

    # proton-vpn ???

    p3x-onenote

    spotify

    libreoffice

    gimp

    starship
    zoxide
    fastfetch
    kitty
    
    stow
    
    rclone

    sioyek

    htop
    btop
    mission-center

    winboat
    freerdp

    podman
    podman-desktop
  ];
}
