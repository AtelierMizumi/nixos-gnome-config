{ pkgs, boot, ... }:
{
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;
  # boot.loader.systemd-boot.configurationLimit = 10;
  # boot.supportedFilesystems = [ "ntfs" ];
  boot.kernelPackages = pkgs.linuxPackages_zen;

  boot.loader = {
    grub = {
      enable                = true;
      useOSProber           = true;
      copyKernels           = true;
      efiInstallAsRemovable = true;
      efiSupport            = true;
      fsIdentifier          = "label";
      devices               = [ "nodev" ];
      extraEntries = ''
        menuentry "Reboot" {
          reboot
        }
        menuentry "Poweroff" {
          halt
        }
        '';
    };
  };
}
