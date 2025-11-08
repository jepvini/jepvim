return {
  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "onsails/lspkind.nvim",
      "uga-rosa/cmp-dictionary",
      "hrsh7th/cmp-nvim-lsp",
      {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
      },
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      local cmp = require("cmp")
      local lspkind = require("lspkind")
      local luasnip = require("luasnip")
      require("cmp_dictionary").setup({
        paths = { "~/.config/nvim/others/en.dict" },
        exact_length = 4,
        first_case_insensitive = true,
      })

      cmp.setup({
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
          { name = "dictionary" },
        },
        mapping = cmp.mapping.preset.insert({
          ["<S-CR>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              if luasnip.expandable() then
                luasnip.expand()
              else
                cmp.confirm({
                  select = true,
                })
              end
            else
              fallback()
            end
          end),

          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.locally_jumpable(1) then
              luasnip.jump(1)
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-u>"] = cmp.mapping.scroll_docs(-4),
          ["<C-d>"] = cmp.mapping.scroll_docs(4),
        }),
        snippet = {
          expand = function(args)
            -- vim.snippet.expand(args.body)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        formatting = {
          fields = { "abbr", "menu", "kind" },
          expandable_indicator = false,
          format = lspkind.cmp_format({
            mode = "symbol_text",
            menu = {
              nvim_lsp = "[LSP]",
              luasnip = "[LuaSnip]",
              buffer = "[Buffer]",
              async_path = "[Path]",
              calc = "[Calc]",
              dictionary = "[Dict]",
            },
          }),
        },
      })
    end,
  },
}
