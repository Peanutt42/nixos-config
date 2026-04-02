{
  description = "My NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    nixos-hardware.url = "github:NixOS/nixos-hardware";
  };

  outputs = { self, nixpkgs, nixos-hardware, ... }:
  {
    nixosConfigurations.peter-pc = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      
      modules = [
        ./configuration.nix
	./pc.nix
      ];
    };
    nixosConfigurations.peter-laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./configuration.nix
	./framework-laptop.nix

        nixos-hardware.nixosModules.framework-amd-ai-300-series
      ];
    };
    nixosConfigurations.peter-lenovo-laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./configuration.nix
        ./lenovo-laptop.nix
      ];
    };
  };
}
