{ pkgs, inputs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages =
    with pkgs;
    [
      nerd-fonts.jetbrains-mono
      noto-fonts-emoji
    ]
    ++ (with inputs.apple-fonts.packages.${pkgs.system}; [
      sf-pro-nerd
      sf-mono-nerd
      sf-compact-nerd
      ny-nerd
    ]);

  gtk = {
    enable = true;
    font = {
      name = "SFProDisplay Nerd Font";
      size = 12;
    };
    theme = {
      name = "Catppuccin";
      package = pkgs.magnetic-catppuccin-gtk;
    };
    iconTheme = {
      name = "Whitesur";
      package = pkgs.whitesur-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 36;
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 36;
  };
}
