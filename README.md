My NixOS configuration. I am a begginer so it is in need of a lot of work.

Both the (mostly) universal files as well as the few system specific files are included within this repo.

If you want to use flakes it is safer to enable them on your system before downloading these configuration files. If you do not use flakes you do not need the flake.nix file.

To install the system:
  1. Download the files and place them in the /etc/nixos directory (or one of your choice).
  2. Edit the configuration.nix file and edit waterver "HOSTNAME" is set to, hostname="HOSTNAME";, to your prefered system specific system/HOSTNAME.nix file.
  3. Use the command "sudo nixos-rebuild switch --flake ." to update your current system and install the software if your want to use a flake. The "." after the --flake is to specify you want to use the directory you are currently in.
  4. Use the command "sudo nixos-rebuild switch" if you do not want to use a flake.
  5. Reboot
