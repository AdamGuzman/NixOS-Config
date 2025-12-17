{ pkgs, ... }:
{
  programs.zed-editor = {
    enable = true;
    extentions = [
      "Nix"
      "TOML"
      "Make"
      "HTML"
      "PHP"
      "Dockerfile"
      "Git Firefly"
      "Lua"
      "golangci-lint"
      "Python LSP"
      "SQL"
      ];
    vim_mode = true;

    load_direnv = "shell_hook";
    base_keymap = "VSCode";

    theme = {
      mode = "system";
      light = "One Light";
      dark = "One Dark";
    };

    show_whitespaces = "all";
    ui_font_size = 16;
    buffer_font_size = 16;
  };
}
