{ config, lib, pkgs, inputs, ... }:

{
  xdg.configFile = {
    "bspwm/bspwmrc".source =
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/RandomDesktopPC/bspwm/bspwmrc";
  
    "sxhkd/sxhkdrc".source = 
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/RandomDesktopPC/sxhkd/sxhkdrc";
    
    "picom/picom.conf".source = 
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/RandomDesktopPC/picom/picom.conf";
   
    "polybar/config.ini".source =
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/RandomDesktopPC/polybar/config.ini";
  };
}
