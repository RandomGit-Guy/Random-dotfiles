{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ../../modules/RandomDesktopPC/nixos/home/home.nix
    ../../modules/RandomDesktopPC/nixos/home/homePkgs.nix
    ../../modules/RandomDesktopPC/nixos/home/xdg-configFile.nix
    ../../modules/RandomDesktopPC/nixos/home/xdg-userDirs.nix
    ../../modules/RandomDesktopPC/nixos/home/neovim.nix
    ../../modules/RandomDesktopPC/nixos/home/libreoffice.nix
    ../../modules/RandomDesktopPC/nixos/home/obsidian.nix
  ];

  programs.home-manager.enable = true;
}
