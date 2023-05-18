{pkgs, ffmpeg6-amf}:
(pkgs.obs-studio.override {ffmpeg_4 = ffmpeg6-amf;}).overrideAttrs (oldAttrs: rec { patches = oldAttrs.patches ++ [ ./7206.patch ./ffmpeg-6.patch ];})