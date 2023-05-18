{ pkgs }:
pkgs.ffmpeg_6-full.overrideAttrs (oldAttrs: rec { buildInputs = oldAttrs.buildInputs ++ [ pkgs.amf-headers ]; configureFlags = oldAttrs.configureFlags ++ [ (pkgs.lib.enableFeature true "amf") ]; })
