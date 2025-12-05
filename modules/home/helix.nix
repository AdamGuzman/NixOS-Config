{ pkgs, ... }:
{
  programs.helix = {
    defaultEditor = true;
    enable = true;
    settings = {
      theme = "tokyonight";
      editor = {
        line-number = "relative";
        bufferline = "multiple";
        lsp = {
          enable = true;
          display-messages = true;
          display-inlay-hints = true;
        };
        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };
        file-picker = {
          hidden = false;
          git-ignore = false;
        };
        indent-guides.render = true;
        soft-wrap.enable = true;
      };
      keys = {
        normal = {
          A-x = "extend_line_above";
          space = {
            e = [
              ":sh rm -f /tmp/unique-file-h21a434"
              ":insert-output yazi '%{buffer_name}' --chooser-file=/tmp/unique-file-h21a434"
              ":insert-output echo \"x1b[?1049h\" > /dev/tty"
              ":open %sh{cat /tmp/unique-file-h21a434}"
              ":redraw"
            ];
            l = {
              g = [
                ":write-all"
                ":insert-output lazygit >/dev/tty"
                ":redraw"
                ":reload-all"
              ];
            };
          };
        };
      };
    };
    languages = {
      language-server = {
        typescript-language-server = with pkgs.nodePackages; {
          command = "${typescript-language-server}/bin/typescript-language-server";
          args = [ "--stdio" "--tsserver-path=${typescript}/lib/node_modules/typescript/lib" ];
        };
        nil = with pkgs; {
          command = "${nil}";
        };
      };
      language = [{
        name = "rust";
        auto-format = false;
      }];
    };
  };
}

