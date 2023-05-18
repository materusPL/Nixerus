{ config, pkgs, lib, inputs, materusFlake, ... }:
{
  imports =
    [

      ./hardware

      ./tmp.nix
    ];

  networking.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  system.copySystemConfiguration = false;
  system.stateVersion = "23.05";


  materus.profile.nix.enable = true;
  materus.profile.nixpkgs.enable = true;

}
