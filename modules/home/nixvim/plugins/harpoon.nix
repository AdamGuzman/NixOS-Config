{
plugins.harpoon = {
    enable = true;
    autoLoad = true;
    enableTelescope = true;
    lazyLoad.enable = true;
    lazyLoad.settings.keys = [
        {
          __unkeyed-1 = "<leader>h";
          __unkeyed-2.__raw = ''
            function()
              require'harpoon':list():add()
            end
          '';
          desc = "Add file";
        }
        {
          __unkeyed-1 = "<leader>H";
          __unkeyed-2.__raw = ''
            function()
              require'harpoon'.ui:toggle_quick_menu(require'harpoon':list())
            end
          '';
          desc = "Quick Menu";
        }
        {
          __unkeyed-1 = "<leader>1";
          __unkeyed-2.__raw = ''
            function()
              require'harpoon':list():select(1)
            end
          '';
          desc = "1";
        }
        {
          __unkeyed-1 = "<leader>2";
          __unkeyed-2.__raw = ''
            function()
              require'harpoon':list():select(2)
            end
          '';
          desc = "2";
        }
        {
          __unkeyed-1 = "<leader>3";
          __unkeyed-2.__raw = ''
            function()
              require'harpoon':list():select(3)
            end
          '';
          desc = "3";
        }
        {
          __unkeyed-1 = "<leader>4";
          __unkeyed-2.__raw = ''
            function()
              require'harpoon':list():select(4)
            end
          '';
          desc = "4";
        }
      ];
    };
}
