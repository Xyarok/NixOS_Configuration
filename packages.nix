{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Flatpak
  services.flatpak.enable = true;

  # System packages
  environment.systemPackages = with pkgs; [
    # System programs
    bottom
    brush
    eza
    nushell
    vim
    wezterm
    zoxide

    # Gnome extensions
    #gnomeExtensions.paperwm

    # Office+
    gimp3
    inkscape
    libreoffice
    qimgv

    # Periferals
    piper
    system76-keyboard-configurator

    # Online
    floorp
    grayjay
    tor-browser
    wget

    # Security
    proton-pass
    protonvpn-gui

    # Programming
    cargo
    gcc
    git
    python3Full
    rustc
    vscodium
    zed-editor
  ];

  # Install packages with specific options
  programs = {
    # Starship
    starship = {
      enable = true;
      settings = {
        # Empty for now
      };
    };
    # Steam
    steam = {
     enable = true;
     remotePlay.openFirewall = true;
     dedicatedServer.openFirewall = true;
     localNetworkGameTransfers.openFirewall = true;
    };
  };
}
