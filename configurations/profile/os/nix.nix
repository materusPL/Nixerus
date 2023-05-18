{ config, pkgs, lib, inputs, materusPkgs, ... }:
let
  cfg = config.materus.profile.nix;
in
{
  options.materus.profile.nix.enable = materusPkgs.lib.mkBoolOpt false "Enable materus nix settings";
  config.nix = lib.mkIf cfg.enable {
    package = pkgs.nixVersions.unstable;

    settings = {
      experimental-features = [ "nix-command" "flakes" "repl-flake" "no-url-literals" ];
      auto-optimise-store = true;



      substituters = [
        "https://nix-community.cachix.org"
        "https://cache.nixos.org/"
      ];
      trusted-public-keys = [ "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs=" ];
    };
  };
}
