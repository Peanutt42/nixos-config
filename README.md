
```bash
# for framework laptop (the `path:` is needed, or nix will not copy the `framework-laptop.nix` file since it is in the `.gitignore`):
sudo nixos-rebuild switch --flake path:/etc/nixos#peter-laptop
```
