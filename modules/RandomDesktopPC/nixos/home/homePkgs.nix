{ config, lib, pkgs, inputs, ... }:

{
    home.packages = with pkgs; [
      # Flake Inputs
      inputs.zen-browser.packages."${pkgs.stdenv.hostPlatform.system}".default
     
      # Desktop
      sxhkd
      picom
      dunst
      rofi
      feh
      polybarFull
      yazi

      # CLI
      kitty
      fastfetch
      fzf
      git
      unzip
      wget
      curl
      jq
      xclip
      libnotify
      xdotool
      pulseaudioFull
      pavucontrol

      # C
      cmake
      gcc
      
      # Media
      mpv
      yt-dlp
      dmenu
      ytfzf
    ];
}
