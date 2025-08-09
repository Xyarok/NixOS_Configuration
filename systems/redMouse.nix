{ config, pkgs, ... }:

{
  networking.hostName = "redMouse"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Touchpad support
  # services.xserver.libinput.enable = true;

  # redMouse specific packages
  environment.systemPackages = with pkgs; [
  ];
}
