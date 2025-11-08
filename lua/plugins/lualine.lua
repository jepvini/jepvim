return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        theme = {
          normal = {
            a = { bg = "#b4befe", fg = "#1e1e2e", gui = "bold" },
            b = { bg = "#1e1e2e", fg = "#b4befe" },
            c = { bg = "#1e1e2e", fg = "#b4befe" },
          },
          insert = {
            a = { bg = "#a6e3a1", fg = "#1e1e2e", gui = "bold" },
            b = { bg = "#1e1e2e", fg = "#a6e3a1" },
            c = { bg = "#1e1e2e", fg = "#a6e3a1" },
          },
          visual = {
            a = { bg = "#cba6f7", fg = "#1e1e2e", gui = "bold" },
            b = { bg = "#1e1e2e", fg = "#cba6f7" },
            c = { bg = "#1e1e2e", fg = "#cba6f7" },
          },
          replace = {
            a = { bg = "#f38ba8", fg = "#1e1e2e", gui = "bold" },
            b = { bg = "#1e1e2e", fg = "#f38ba8" },
            c = { bg = "#1e1e2e", fg = "#f38ba8" },
          },
          command = {
            a = { bg = "#fab387", fg = "#1e1e2e", gui = "bold" },
            b = { bg = "#1e1e2e", fg = "#fab387" },
            c = { bg = "#1e1e2e", fg = "#fab387" },
          },
          inactive = {
            a = { bg = "#6c7086", fg = "#1e1e2e", gui = "bold" },
            b = { bg = "#1e1e2e", fg = "#6c7086" },
            c = { bg = "#1e1e2e", fg = "#6c7086" },
          },
        },
        icons_enabled = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "NvimTree" },
        },
      },

      sections = {
        lualine_a = { "mode" },
        lualine_b = { "buffers", "branch", "diff", "diagnostics" },
        lualine_c = {},
        lualine_x = {
          {
            "harpoon2",
            icon = "",
            color_active = { fg = "#a6e3a1" },
            indicators = { "1", "2", "3", "4" },
            active_indicators = { "1", "2", "3", "4" },
            _separator = " ",
            no_harpoon = " ",
          },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
}
