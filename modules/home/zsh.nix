{
programs.zsh = {
  enable = true;
  autosuggestion.enable = true;
  syntaxHighlighting.enable = true;
  oh-my-zsh = {
    enable = true;
    theme = "robbyrussell";
    plugins = [
      "git"
      "vi-mode"
      ];
    };
  shellAliases = {
    ll = "ls -l";
    l = "ls -al";
    vim = "nvim";
    lg = "lazygit";
    ldb = "lazysql";
    cd = "z";
  };
  history.size = 10000;
  };
}
