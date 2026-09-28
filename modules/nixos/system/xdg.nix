{ config, lib, pkgs, inputs, ... }:

{
  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
      ];

      config.common.default = "gtk";
    };
  };
}
