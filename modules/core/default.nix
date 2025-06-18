{ ... }:
{
  imports = [
    ./bootloader.nix
    ./bluetooth.nix
    ./network.nix
    ./nh.nix
    ./gnome.nix
    ./pipewire.nix
    ./program.nix
    ./security.nix
    ./services.nix
    ./steam.nix
    ./system.nix
    ./flatpak.nix
    ./user.nix
    ./wayland.nix
    ./virtualization.nix
  ];
}
