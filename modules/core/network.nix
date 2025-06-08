{ pkgs, host, ... }:
{
  networking = {
    hostName = "${host}";
    networkmanager.enable = true;
    nameservers = [
      "all.dns.mullvad.net"
      "1.1.1.1"
    ];
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
        80
        443
        # 25565
      ];
      allowedUDPPorts = [
        # 19132
      ];
    };
  };

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}
