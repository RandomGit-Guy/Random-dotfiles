{ config, lib, pkgs, inputs, ... }:

{
  users.users.RandomGuy = {
    isNormalUser = true;
    description = "RandomGuy";
    extraGroups = [ "wheel" "networkmanager" ];
    home = "/home/RandomGuy";
    shell = pkgs.fish;
  };
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
}
