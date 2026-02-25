

install_framework_laptop:
	sudo nixos-rebuild switch --flake path:/etc/nixos#peter-laptop

install_pc:
        sudo nixos-rebuild switch --flake path:/etc/nixos#peter-pc
