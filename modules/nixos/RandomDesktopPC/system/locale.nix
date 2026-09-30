{ config, lib, pkgs, inputs, ... }:

{
  time.timeZone = "Europe/Berlin";
  i18n.defaultLocale = "en_US.UTF-8";
  services.xserver.xkb.layout = "de";
  services.xserver.xkb.options = "compose:rctrl";
}
