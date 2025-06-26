{ pkgs, ... }:
{
  pkg.proton-vpn = with pkgs; [ protonvpn-gui ];
}
