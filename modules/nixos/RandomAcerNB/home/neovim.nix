{ config, lib, pkgs, inputs, ... }: 

{
  programs.neovim = {
    enable = true;
    initLua = ''
      vim.opt.clipboard = "unnamedplus"
    '';
  };
}
