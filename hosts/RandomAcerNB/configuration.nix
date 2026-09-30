{ config, lib, pkgs, inputs, ... }:

{
  imports = [ 
      ./hardware-configuration.nix
      
      ../../modules/RandomAcerNB/nixos/system/systemPkgs.nix
      ../../modules/RandomAcerNB/nixos/system/fonts.nix
      ../../modules/RandomAcerNB/nixos/system/flatpak.nix
      ../../modules/RandomAcerNB/nixos/system/desktop.nix
      ../../modules/RandomAcerNB/nixos/system/fish.nix
      ../../modules/RandomAcerNB/nixos/system/experimental.nix
      ../../modules/RandomAcerNB/nixos/system/boot.nix
      ../../modules/RandomAcerNB/nixos/system/user.nix
      ../../modules/RandomAcerNB/nixos/system/locale.nix
      ../../modules/RandomAcerNB/nixos/system/network.nix
      ../../modules/RandomAcerNB/nixos/system/xdg.nix
      ../../modules/RandomAcerNB/nixos/system/audio.nix
  ];

  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "26.05";
}

