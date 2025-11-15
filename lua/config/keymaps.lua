----------------------------------------------------

-- Keybindings

----------------------------------------------------

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- jk as esc
vim.keymap.set({ "i" }, "jk", "<esc>")

-- Quit file
-- vim.keymap.set("n", "<leader>q", "<cmd>:bd<cr>")

-- Start Macro
vim.keymap.set("n", "<leader>q", "q")

-- Move half page
vim.keymap.set({ "n", "v" }, "J", "<C-d>zz")
vim.keymap.set({ "n", "v" }, "K", "<C-u>zz")

-- Copy and paste to/from keyboard
vim.keymap.set({ "n", "x", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "x", "v" }, "<leader>p", '"+p')

--- Delete does not change internal register
vim.keymap.set({ "n", "x", "v" }, "x", '"_x')

-- Move visual selecyed lines
vim.keymap.set("v", "H", ":m '>+1<CR> gv=gv")
vim.keymap.set("v", "L", ":m '<-2<CR> gv=gv")

-- Quote word
vim.keymap.set("n", "<leader>s", 'ciw""<esc>P')
vim.keymap.set("n", "<leader>S", 'ciW""<esc>P')

-- Sort selected text
vim.keymap.set("v", "<leader>S", ":sort<cr>")

-- Select whole buffe
vim.keymap.set("n", "<leader>A", ":keepjumps normal! ggVG<cr>")

-- Disable scroll in insert mode
vim.keymap.set("i", "<Up>", "<nop>")
vim.keymap.set("i", "<Down>", "<nop>")
vim.keymap.set("n", "<Up>", "<nop>")
vim.keymap.set("n", "<Down>", "<nop>")
vim.keymap.set("v", "<Up>", "<nop>")
vim.keymap.set("v", "<Down>", "<nop>")

-- Move in buffers
vim.keymap.set({ "n", "i" }, "<C-l>", "<cmd>bnext<cr>")
vim.keymap.set({ "n", "i" }, "<C-h>", "<cmd>bprevious<cr>")

vim.api.nvim_set_keymap(
  "n",
  "<leader>do",
  "<cmd>lua vim.diagnostic.open_float()<CR>",
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap("n", "<leader>d[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>d]", "<cmd>lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dd", "<cmd>Telescope diagnostics<CR>", { noremap = true, silent = true })
