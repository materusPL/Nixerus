{ pkgs, lib, stdenv, fetchurl, dpkg, autoPatchelfHook, perl }:


stdenv.mkDerivation rec {
  pname = "fbset";
  version = "2.1-33";

  src = fetchurl {
    url = "http://ftp.pl.debian.org/debian/pool/main/f/fbset/fbset_${version}_amd64.deb";
    sha256 = "sha256-SgnrDvxLeYxkxFWetB/M5DOJwHk/mB3gTO0EyZRpLk4=";
  };

  dontBuild = true;

  buildInputs = [ perl ];
  nativeBuildInputs = [dpkg autoPatchelfHook];

  unpackPhase = ''
  dpkg -x $src .
  '';

  installPhase = ''
  mkdir -p $out
  mv bin $out
  mv etc $out
  mv usr/share $out
  patchShebangs $out/bin/modeline2fb
  ls -la $out
  '';

  preferLocalBuild = true;
  
  meta = with lib; {
    description = "Program to modify settings for the framebuffer devices (/dev/fb[0-9]* or /dev/fb/[0-9]*) on Linux, like depth, virtual resolution, timing parameters etc.";
    homepage = "https://sources.debian.org/src/fbset/";
    license = licenses.gpl2;
    platforms = platforms.linux;
  };
}
