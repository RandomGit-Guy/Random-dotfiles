{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/nixos/home/home.nix
    ../../modules/nixos/home/homePkgs.nix
    ../../modules/nixos/home/xdg-configFile.nix
    ../../modules/nixos/home/neovim.nix
    ../../modules/nixos/home/libreoffice.nix
    ../../modules/nixos/home/obsidian.nix
  ];

  programs.home-manager.enable = true;
}
