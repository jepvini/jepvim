return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        -- Customize or remove this keymap to your liking
        "<leader>g",
        function()
          require("conform").format({ async = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = {
      formatters = {
        beautysh = {
          command = "beautysh",
          prepend_args = { "--indent-size", "2" },
        },
        clang_format = {
          command = "clang-format",
          prepend_args = { "--style", "file:/home/leo/.config/nvim/others/clang-format" },
        },
        stylua = {
          command = "stylua",
          prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
        },
      },

      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        json = { "jq" },
        tex = { "tex-fmt" },
        lua = { "stylua" },
        markdown = { "mdformat" },
        python = { "isort", "black" },
        sh = { "beautysh" },
        toml = { "taplo" },

        ["*"] = { "trim_whitespace", "trim_newlines" },
        -- ["*"] = { "codespell", "trim_whitespace", "trim_newlines" },
      },
    },
  },
}
