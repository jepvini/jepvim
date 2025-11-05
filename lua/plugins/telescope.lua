return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
      },
    },
    keys = function()
      return {
        { "<leader>R", "<cmd>Telescope registers<CR>", desc = "search in registers" },
        { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "search in home" },
        { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "rg in current dir" },
        { "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "search in current buffer" },
        { "<leader>r", "<cmd>Telescope oldfiles<CR>", desc = "search in buffer" },
      }
    end,
    -- opts = {
    --   pickers = {
    --     oldfiles = {
    --       mappings = {
    --         i = {
    --           ["<cr>"] = "select_tab",
    --         },
    --         n = {
    --           ["<cr>"] = "select_tab",
    --         },
    --       },
    --     },
    --     find_files = {
    --       --   find_command = {
    --       --     "rg",
    --       --     "/home/leo",
    --       --     "--files",
    --       --     "-g",
    --       --     "!Poul/",
    --       --     "-g",
    --       --     "!helm/",
    --       --     "-g",
    --       --     "!MacOS/",
    --       --     "-g",
    --       --     "!HPC/WeBeep",
    --       --     "-g",
    --       --     "!Downloads",
    --       --     "-g",
    --       --     "!.cache/",
    --       --     "-g",
    --       --     "!.rustup",
    --       --     "-g",
    --       --     "!.local",
    --       --     "-g",
    --       --     "!.mozilla",
    --       --     "-g",
    --       --     "!.config",
    --       --     "-g",
    --       --     "!.cargo",
    --       --     "-g",
    --       --     "!.undodir",
    --       --     "-g",
    --       --     "!.cargo",
    --       --     "-g",
    --       --     "!.electron*",
    --       --     "-g",
    --       --     "!.zcompdump*",
    --       --     "-g",
    --       --     "!.gnupg",
    --       --     "-g",
    --       --     "!.kube",
    --       --     "--hidden",
    --       -- },
    --       mappings = {
    --         i = {
    --           ["<cr>"] = "select_tab",
    --         },
    --         n = {
    --           ["<cr>"] = "select_tab",
    --         },
    --       },
    --     },
    --     live_grep = {
    --       mappings = {
    --         i = {
    --           ["<cr>"] = "select_tab",
    --         },
    --         n = {
    --           ["<cr>"] = "select_tab",
    --         },
    -- },
    -- },
    -- },
    -- },
  },
}
