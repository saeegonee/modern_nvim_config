print("Load config 0.1.2")

-- plugins
require("plugins.load")
require("plugins.mason")
require("plugins.lualine")
require("plugins.fzf")
require("plugins.blink-cmp")
require("plugins.treesitter")
require("plugins.bufferline")
require("plugins.notify")
require("plugins.noice")
require("plugins.mini_pairs")
require("plugins.mini_surround")
require("plugins.mini_animate")
require("plugins.dap")
require("plugins.dapui")
require("plugins.py_lint")

-- options
require("options.common")
require("options.lsp")
require("options.colorscheme")

-- keymaps
require("keymaps.common")
require("keymaps.fzf")
require("keymaps.mason")
require("keymaps.lazygit")
require("keymaps.bufferline")
require("keymaps.dap")

-- autocmd
require("autocmd.copy")
require("autocmd.highlight")
-- require("autocmd.messages")
