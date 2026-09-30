{ config, lib, pkgs, inputs, ... }:

{
  xdg.configFile = {
    "bspwm/bspwmrc".source =
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/bspwm/bspwmrc";
  
    "sxhkd/sxhkdrc".source = 
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/sxhkd/sxhkdrc";
    
    "picom/picom.conf".source = 
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/picom/picom.conf";
   
    "polybar/config.ini".source =
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/polybar/config.ini";
  };
}
