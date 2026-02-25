
```bash
# on first install (generates the `hardware-configuration.nix` file)
sudo nixos-generate-config

# for pc:

just install_pc
# or if just is not yet installed (the `path:` is needed, or nix will not copy the `framework-laptop.nix` file since it is in the `.gitignore`):
sudo nixos-rebuild switch --flake path:/etc/nixos#peter-pc


# for framework laptop:

just install_framework_laptop
# or if just is not yet installed (the `path:` is needed, or nix will not copy the `framework-laptop.nix` file since it is in the `.gitignore`):
sudo nixos-rebuild switch --flake path:/etc/nixos#peter-laptop

```
