{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  networking.hostName = "peter-lenovo-laptop";

  services.fwupd.enable = true;

  hardware.enableRedistributableFirmware = true;

  hardware.cpu.amd.updateMicrocode = true;

  services.power-profiles-daemon.enable = true;
  powerManagement.cpuFreqGovernor = "schedutil";

  services.logind.settings.Login.HandleLidSwitch = "suspend";

  # bluetooth:
  # may need to run `rfkill unblock bluetooth` once on first install to unblock the softblock on bluetooth
  hardware.bluetooth.enable = true;

  # disable TPM, as the jobs for /dev/tmp0 and /dev/tmprm0 timeout on startup
  systemd.tpm2.enable = false;
  boot.initrd.systemd.tpm2.enable = false;
}
