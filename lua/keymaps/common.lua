local opts = { noremap = true, silent = true }

-- common
vim.keymap.set("n", "<leader>w",    "<Cmd>Explore<CR>")

-- lsp
vim.keymap.set("n", "gd",           vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gr",           vim.lsp.buf.references, opts)
vim.keymap.set("n", "S-k",          vim.lsp.buf.hover, opts)
vim.keymap.set("n", "<Leader>fo",   vim.lsp.buf.format, opts)

-- move line
vim.keymap.set("n", "<M-Down>",     "<Cmd>m+1<CR>")
vim.keymap.set("n", "<M-Up>",       "<Cmd>m-2<CR>")

-- window split settings
vim.keymap.set("n", "<leader>sv",   "<Cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>sh",   "<Cmd>split j<CR>")

vim.keymap.set("n", "<C-Right>",    "<Cmd>wincmd l<CR>")
vim.keymap.set("n", "<C-Left>",     "<Cmd>wincmd h<CR>")
vim.keymap.set("n", "<C-Up>",       "<Cmd>wincmd k<CR>")
vim.keymap.set("n", "<C-Down>",     "<Cmd>wincmd j<CR>")

vim.keymap.set("n", "<S-Right>",    "<Cmd>vertical resize +1<CR>")
vim.keymap.set("n", "<S-Left>",     "<Cmd>vertical resize -1<CR>")
vim.keymap.set("n", "<S-Up>",       "<Cmd>horizontal resize +1<CR>")
vim.keymap.set("n", "<S-Down>",     "<Cmd>horizontal resize -1<CR>")
