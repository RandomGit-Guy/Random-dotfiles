{ config, lib, pkgs, inputs, ... }:

{
  networking = {
    hostName = "RandomAcerNB";
    networkmanager.enable = true;
  };
}
