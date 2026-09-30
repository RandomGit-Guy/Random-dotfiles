{ config, lib, pkgs, inputs, ... }:

{
  console.keyMap = "de";
  
  services.xserver = {
    enable = true;
  
    displayManager.lightdm = {
      enable = true;
    };
    
    windowManager.i3 = {
      enable = true;
    };

    windowManager.bspwm = {
      enable = true;
    };

    desktopManager.xterm.enable = false;
  };

  services.displayManager.defaultSession = "none+bspwm";
}
