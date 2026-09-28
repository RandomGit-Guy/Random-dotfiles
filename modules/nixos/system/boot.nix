{ config, lib, pkgs, inputs, ... }: 

{
  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
  };
}
