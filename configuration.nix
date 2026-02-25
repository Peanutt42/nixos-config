{ config, pkgs, ... }:

let
  sharedConfig = import ./shared.nix;

  deviceConfig = if builtins.pathExists ./framework-laptop.nix then
    import ./framework-laptop.nix
  else
    {};

in

{
  # nix = {
  #   extraExperimentalFeatures = [ "nix-command" "flakes" ];
  # };

  imports = 
    [
      ./cachix.nix
      sharedConfig
      deviceConfig
    ];
}
