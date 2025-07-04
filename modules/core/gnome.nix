{ pkgs, username, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us";
    };
    displayManager.gdm.enable = true;
    desktopManager.gnome = {
      enable = true;
      extraGSettingsOverridePackages = [ pkgs.mutter ];
      extraGSettingsOverrides = ''
        [org.gnome.mutter]
        experimental-features=['scale-monitor-framebuffer']
      '';
    };
  };

  # Extension
  home-manager.users.${username} = {
    dconf.settings = {
      "org/gnome/desktop/interface".color-scheme = "prefer-dark";
      # ...
      "org/gnome/shell" = {
        disable-user-extensions = false;

        # `gnome-extensions list` for a list
        enabled-extensions = [
          "user-theme@gnome-shell-extensions.gcampax.github.com"
          "trayIconsReloaded@selfmade.pl"
          "appindicatorsupport@rgcjonas.gmail.com"
          "blur-my-shell@aunetx"
          "wiggle@mechtifs"
          "just-perfection-desktop@just-perfection"
        ];
      };
    };

    home.packages = with pkgs; [
      gnome-tweaks
      gnomeExtensions.appindicator
      gnomeExtensions.user-themes
      gnomeExtensions.just-perfection
      gnomeExtensions.wiggle
      gnomeExtensions.blur-my-shell
      gnomeExtensions.tray-icons-reloaded
    ];
  };

  # Exclude those programs I don't use
  environment.gnome.excludePackages = (
    with pkgs;
    [
      atomix # puzzle game
      cheese # webcam tool
      epiphany # web browser
      evince # document viewer
      geary # email reader
      gedit # text editor
      gnome-characters
      gnome-music
      gnome-photos
      gnome-terminal
      gnome-tour
      gnome-weather
      hitori # sudoku game
      iagno # go game
      tali # poker game
      totem # video player
    ]
  );
}
