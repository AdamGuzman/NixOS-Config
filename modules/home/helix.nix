{ config, pkgs, ... }:
{
  programs.helix = {
    enable = true;
    settings = {
      theme = "catppuccin-mocha";
      editor = {
        line-number = "relative";
        lsp.display-messages = true;
      };
    };
  };
}
