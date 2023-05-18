{ config, pkgs, lib, ... }:
{

  materus.profile = {
    fonts.enable = lib.mkDefault true;
    nixpkgs.enable = lib.mkDefault true;
    enableDesktop = lib.mkDefault true;
    enableTerminal = lib.mkDefault true;
    enableTerminalExtra = lib.mkDefault true;
    enableNixDevel = lib.mkDefault true;

  };
  programs.git.signing.key = "28D140BCA60B4FD1";
  programs.git.signing.signByDefault = true;
  programs.git.userEmail = "materus@podkos.pl";
  programs.git.userName = "materus";

  home.username =  "materus";
  home.homeDirectory = "/home/materus";
  home.stateVersion =  "23.05";
  home.packages = [pkgs.papirus-icon-theme];
}
