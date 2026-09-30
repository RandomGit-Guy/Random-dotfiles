{ config, lib, pkgs, inputs, ... }:

{
  fonts.packages = with pkgs; [
    noto-fonts
    ibm-plex
    nerd-fonts.jetbrains-mono

    font-awesome
  ];

  fonts.fontconfig.defaultFonts = {
    serif = [
      "Noto Serif"
    ];

    sansSerif = [
      "IBM Plex Sans" 
    ];

    monospace = [
      "JetBrainsMono Nerd Font"
    ];
  };
}
