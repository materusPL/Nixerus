{ config, pkgs, lib, ... }:
{
  home.stateVersion = "23.05";
  home.homeDirectory = "/home/materus";
  
  programs.git.signing.signByDefault = true;

  materus.profile = {
    fonts.enable = lib.mkDefault true;
    nixpkgs.enable = lib.mkDefault true;
    enableDesktop = lib.mkDefault true;
    enableTerminal = lib.mkDefault true;
    enableTerminalExtra = lib.mkDefault true;
    enableNixDevel = lib.mkDefault true;

  };
}
