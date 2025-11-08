return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  keys = function()
    local keys = {
      {
        "<leader>k",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon File",
      },
      {
        "<leader>j",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon Quick Menu",
      },
      {
        "<C-j>",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "Harpoon Select 1",
      },
      {
        "<C-k>",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "Harpoon Select 2",
      },
      {
        "<C-h>",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "Harpoon Select 3",
      },
      {
        "<C-l>",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "Harpoon Select 4",
      },
    }
    return keys
  end,
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
    },
  },
}
