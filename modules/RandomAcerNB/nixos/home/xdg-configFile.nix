{ config, lib, pkgs, inputs, ... }:

{
  xdg.configFile = {
    "bspwm/bspwmrc".source =
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/RandomAcerNB/bspwm/bspwmrc";
  
    "sxhkd/sxhkdrc".source = 
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/RandomAcerNB/sxhkd/sxhkdrc";
    
    "picom/picom.conf".source = 
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/RandomAcerNB/picom/picom.conf";
   
    "polybar/config.ini".source =
      config.lib.file.mkOutOfStoreSymlink "/home/RandomGuy/nixos/dotfiles/RandomAcerNB/polybar/config.ini";
  };
}
