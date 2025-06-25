{ pkgs, ... }:
{
  home-manager.programs = {
    protonvpn-gui = {
      enable = true;
    };
  };
}
