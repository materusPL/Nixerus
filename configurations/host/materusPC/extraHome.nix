{ config, pkgs, lib, ... }:
{
  home.stateVersion = "23.05";
  home.homeDirectory = "/home/materus";
  programs.git.signing.key = "28D140BCA60B4FD1";
  programs.git.signing.signByDefault = true;
  programs.git.userEmail = "materus@podkos.pl";
  programs.git.userName = "materus";
}
