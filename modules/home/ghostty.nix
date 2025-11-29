{ config, pkgs, ... }:
{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "catppuccin-mocha";
      font-size = 15;
      window-decoration = "none";
    };
  };
}
