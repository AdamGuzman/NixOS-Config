{ pkgs, ... }:
{
  programs.helix = {
    enable = true;
    settings = {
      theme = "tokyo-night";
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
        softwrap.enable = true;
      };
    };
    languages = {
      language-server = {
        typescript-language-server = with pkgs.nodePackages; {
          command = "${typescript-language-server}/bin/typescript-language-server";
          args = [ "--stdio" "--tsserver-path=${typescript}/lib/node_modules/typescript/lib" ];
        };
      };
      language = [{
        name = "rust";
        auto-format = false;
      }];
    };
  };
}

