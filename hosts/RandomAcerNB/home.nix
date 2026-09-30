{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/RandomAcerNB/nixos/home/home.nix
    ../../modules/RandomAcerNB/nixos/home/homePkgs.nix
    ../../modules/RandomAcerNB/nixos/home/xdg-configFile.nix
    ../../modules/RandomAcerNB/nixos/home/xdg-userDirs.nix
    ../../modules/RandomAcerNB/nixos/home/neovim.nix
    ../../modules/RandomAcerNB/nixos/home/libreoffice.nix
    ../../modules/RandomAcerNB/nixos/home/obsidian.nix
  ];

  programs.home-manager.enable = true;
}
