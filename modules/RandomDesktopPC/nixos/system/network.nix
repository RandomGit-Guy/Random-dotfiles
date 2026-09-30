{ config, lib, pkgs, inputs, ... }:

{
  networking = {
    hostName = "RandomDesktopPC";
    networkmanager.enable = true;
  };
}
