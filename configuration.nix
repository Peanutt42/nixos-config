{ config, pkgs, ... }:

let
  sharedConfig = import ./shared.nix;

  deviceConfig = if builtins.pathExists ./pc.nix then
    import ./pc.nix
  else if builtins.pathExists ./framework-laptop.nix then
    import ./framework-laptop.nix
  else
    {};

in

{
  imports = 
    [
      ./cachix.nix
      sharedConfig
      deviceConfig
    ];
}
