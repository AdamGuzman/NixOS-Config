{
  plugins.lsp = {
    enable = true;
    autoLoad = true;
    inlayHints = true;
    servers = {
      nixd = {
        enable = true;
      };
    };
  };
}
