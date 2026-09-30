{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/nixos/RandomAcerNB/home/home.nix
    ../../modules/nixos/RandomAcerNB/home/homePkgs.nix
    ../../modules/nixos/RandomAcerNB/home/xdg-configFile.nix
    ../../modules/nixos/RandomAcerNB/home/xdg-userDirs.nix
    ../../modules/nixos/RandomAcerNB/home/neovim.nix
    ../../modules/nixos/RandomAcerNB/home/libreoffice.nix
    ../../modules/nixos/RandomAcerNB/home/obsidian.nix
  ];

  programs.home-manager.enable = true;
}
