{ config, pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Flatpak
  services.flatpak.enable = true;

  # System packages
  environment.systemPackages = with pkgs; [
    # System
    eza

    # Gnome extensions
    gnomeExtensions.tiling-shell

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
    librewolf
    wget

    # Security
    proton-pass
    protonvpn-gui

    # Editors
    vim
    vscodium
    zed-editor

    # Programming
    git
    python3Full
  ];

  # Install packages with specific options
  programs = {

    steam = {
     enable = true;
     remotePlay.openFirewall = true;
     dedicatedServer.openFirewall = true;
     localNetworkGameTransfers.openFirewall = true;
    };

    nushell = {
      enable = true;
      configFile.source = ~/.config/nushell/config.nu;
      shellAliases = {
        nll = "eza -la --group-directories-first";
        nls = "eza -l --group-directories-first";
      };
    };
  };
}
