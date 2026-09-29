{ config, lib, pkgs, inputs, ... }:

{
  xdg.userDirs = {
    enable = true;
    createDirectories = true;

    desktop = "$HOME/Desktop";
    download = "$HOME/Downloads";
    documents = "$HOME/Documents";
    music = "$HOME/Music";
    pictures = "$HOME/Pictures";
    videos = "$HOME/Videos";

    publicShare = null;
    templates = null;
  };
}
