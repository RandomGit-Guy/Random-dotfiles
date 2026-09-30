{ config, lib, pkgs, inputs, ... }:

{
  imports = [ 
      ./hardware-configuration.nix
      
      ../../modules/nixos/RandomDesktopPC/system/systemPkgs.nix
      ../../modules/nixos/RandomDesktopPC/system/fonts.nix
      ../../modules/nixos/RandomDesktopPC/system/flatpak.nix
      ../../modules/nixos/RandomDesktopPC/system/desktop.nix
      ../../modules/nixos/RandomDesktopPC/system/fish.nix
      ../../modules/nixos/RandomDesktopPC/system/experimental.nix
      ../../modules/nixos/RandomDesktopPC/system/boot.nix
      ../../modules/nixos/RandomDesktopPC/system/user.nix
      ../../modules/nixos/RandomDesktopPC/system/locale.nix
      ../../modules/nixos/RandomDesktopPC/system/network.nix
      ../../modules/nixos/RandomDesktopPC/system/xdg.nix
      ../../modules/nixos/RandomDesktopPC/system/audio.nix
  ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "26.05";
}

