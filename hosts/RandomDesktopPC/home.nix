{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/nixos/RandomDesktopPC/home/home.nix
    ../../modules/nixos/RandomDesktopPC/home/homePkgs.nix
    ../../modules/nixos/RandomDesktopPC/home/xdg-configFile.nix
    ../../modules/nixos/RandomDesktopPC/home/xdg-userDirs.nix
    ../../modules/nixos/RandomDesktopPC/home/neovim.nix
    ../../modules/nixos/RandomDesktopPC/home/libreoffice.nix
    ../../modules/nixos/RandomDesktopPC/home/obsidian.nix
  ];

  programs.home-manager.enable = true;
}
