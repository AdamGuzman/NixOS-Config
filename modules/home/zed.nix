{ pkgs, lib, ... }:
{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "toml"
      "make"
      "html"
      "php"
      "dockerfile"
      "git firefly"
      "lua"
      "golangci-lint"
      "python lsp"
      "sql"
      ];

    userSettings = {
      node = {
      path = lib.getExe pkgs.nodejs;
      npm_path = lib.getExe' pkgs.nodejs "npm";
      };

    hour_format = "hour12";
    auto_update = false;

    terminal = {
      alternate_scroll = "off";
      blinking = "off";
      copy_on_select = false;
      dock = "bottom";
      detect_venv = {
        on = {
          directories = [ ".env" "env" ".venv" "venv" ];
          activate_script = "default";
        };
      };
      env = {
        TERM = "alacritty";
      };
      font_family = "FiraCode Nerd Font";
      line_height = "comfortable";
      shell = "system";
      toolbar = {
        title = true;
      };
      working_directory = "current_project_directory";
    };

    lsp = {
      nix = {
        binary = {
          path_lookup = true;
        };
      };
    };

      vim_mode = true;

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
  };
}
