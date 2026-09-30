{ config, lib, pkgs, inputs, ... }:

{
  imports = [ 
      ./hardware-configuration.nix
      
      ../../modules/RandomDesktopPC/nixos/system/systemPkgs.nix
      ../../modules/RandomDesktopPC/nixos/system/fonts.nix
      ../../modules/RandomDesktopPC/nixos/system/flatpak.nix
      ../../modules/RandomDesktopPC/nixos/system/desktop.nix
      ../../modules/RandomDesktopPC/nixos/system/fish.nix
      ../../modules/RandomDesktopPC/nixos/system/experimental.nix
      ../../modules/RandomDesktopPC/nixos/system/boot.nix
      ../../modules/RandomDesktopPC/nixos/system/user.nix
      ../../modules/RandomDesktopPC/nixos/system/locale.nix
      ../../modules/RandomDesktopPC/nixos/system/network.nix
      ../../modules/RandomDesktopPC/nixos/system/xdg.nix
      ../../modules/RandomDesktopPc/nixos/system/audio.nix
  ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "26.05";
}

