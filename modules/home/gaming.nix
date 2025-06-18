{ pkgs, inputs, ... }:
{
  home.packages = with pkgs; [
    ## Utils
    # Already defined elsewhere
    # gamemode
    # gamescope
    # winetricks
    # inputs.nix-gaming.packages.${pkgs.system}.wine-ge

    ## Minecraft
    atlauncher

    ## Celeste
    celeste-classic
    celeste-classic-pm

    ## Doom
    # gzdoom
    # crispy-doom

    ## Emulation
    # sameboy
    # snes9x
    # cemu
    # dolphin-emu
  ];
}
