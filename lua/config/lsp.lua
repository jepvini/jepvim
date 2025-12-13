-- Keys
vim.keymap.set("n", "<leader>i", "<cmd>lua vim.lsp.buf.hover()<cr>")
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
vim.keymap.set("n", "<leader>nn", "<cmd>lua vim.lsp.buf.rename()<cr>")
vim.keymap.set({ "n", "x" }, "<leader>G", "<cmd>lua vim.lsp.buf.format({async = true})<cr>")
vim.keymap.set("n", "<leader>na", "<cmd>lua vim.lsp.buf.code_action()<cr>")

-- Enable
vim.lsp.enable("bashls")
vim.lsp.enable("bitbake-language-server")
vim.lsp.enable("clangd")
vim.lsp.enable("lua_ls")
vim.lsp.enable("marksman")
vim.lsp.enable("taplo")
vim.lsp.enable("texlab")

-- Config
vim.lsp.config["bashls"] = {
  cmd = { "bash-language-server", "start" },
  settings = {
    bashIde = {
      -- Glob pattern for finding and parsing shell script files in the workspace.
      -- Used by the background analysis features across files.

      -- Prevent recursive scanning which will cause issues when opening a file
      -- directly in the home directory (e.g. ~/foo.sh).
      --
      -- Default upstream pattern is "**/*@(.sh|.inc|.bash|.command)".
      globPattern = vim.env.GLOB_PATTERN or "*@(.sh|.inc|.bash|.command)",
    },
  },
  filetypes = { "bash", "sh" },
  root_markers = { ".git" },
}

vim.lsp.config["lua_ls"] = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  -- Sets the "workspace" to the directory where any of these files is found.
  -- Files that share a root directory will reuse the LSP server connection.
  -- Nested lists indicate equal priority, see |vim.lsp.Config|.
  root_markers = { { ".luarc.json", ".luarc.jsonc" }, ".git" },
  -- Specific settings to send to the server. The schema is server-defined.
  -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
  -- single_file_support = true,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
    },
  },
}

vim.lsp.config["taplo"] = {
  cmd = { "taplo", "lsp", "stdio" },
  filetypes = { "toml" },
  -- root_markers = { ".taplo.toml", "taplo.toml", ".git" },
  root_markers = { "." },
}
