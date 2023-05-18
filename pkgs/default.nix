{pkgs, callPackage}:
{
   amdgpu-pro-libs = pkgs.lib.recurseIntoAttrs {
      vulkan = callPackage ./libs/amdgpu-pro-libs { };
      amf = callPackage ./libs/amdgpu-pro-libs/amf.nix { };
      opengl = callPackage ./libs/amdgpu-pro-libs/opengl.nix { };
      prefixes = callPackage ./libs/amdgpu-pro-libs/prefixes.nix { };
    };


    ffmpeg6-amf = callPackage ./apps/ffmpeg {};
    obs-amf = callPackage ./apps/obs {};

}