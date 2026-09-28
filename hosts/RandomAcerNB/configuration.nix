{ config, lib, pkgs, inputs, ... }:

{
  imports = [ 
      ./hardware-configuration.nix
      
      ../../modules/nixos/system/systemPkgs.nix
      ../../modules/nixos/system/fonts.nix
      ../../modules/nixos/system/flatpak.nix
      ../../modules/nixos/system/desktop.nix
      ../../modules/nixos/system/fish.nix
      ../../modules/nixos/system/experimental.nix
      ../../modules/nixos/system/boot.nix
      ../../modules/nixos/system/user.nix
      ../../modules/nixos/system/locale.nix
      ../../modules/nixos/system/network.nix
      ../../modules/nixos/system/xdg.nix
      ../../modules/nixos/system/audio.nix
  ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "26.05";
}

