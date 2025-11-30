{
  programs.nixvim = {
    imports = [
      ./plugins/telescope.nix
      ./plugins/which-key.nix
      ./plugins/git.nix
      ./plugins/mini.nix
      ./plugins/harpoon.nix
      ./plugins/lualine.nix
      ./plugins/lazy.nix
      ./plugins/lsp.nix
    ];
    enable = true;
    globals.mapleader = " ";
    colorschemes.catppuccin.enable = true;
    opts = {
      number = true;
      relativenumber = true;
    };
    keymaps = [
      {
      key = "<leader>lg";
      action = "<cmd>LazyGit<cr>";
      mode = "n";
      options = {
        desc = "LazyGit";
      };
    }
  ];
  };
}
