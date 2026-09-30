{ config, lib, pkgs, inputs, ... }:

{
  imports = [ 
      ./hardware-configuration.nix
      
      ../../modules/nixos/RandomAcerNB/system/systemPkgs.nix
      ../../modules/nixos/RandomAcerNB/system/fonts.nix
      ../../modules/nixos/RandomAcerNB/system/flatpak.nix
      ../../modules/nixos/RandomAcerNB/system/desktop.nix
      ../../modules/nixos/RandomAcerNB/system/fish.nix
      ../../modules/nixos/RandomAcerNB/system/experimental.nix
      ../../modules/nixos/RandomAcerNB/system/boot.nix
      ../../modules/nixos/RandomAcerNB/system/user.nix
      ../../modules/nixos/RandomAcerNB/system/locale.nix
      ../../modules/nixos/RandomAcerNB/system/network.nix
      ../../modules/nixos/RandomAcerNB/system/xdg.nix
      ../../modules/nixos/RandomAcerNB/system/audio.nix
  ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "26.05";
}

