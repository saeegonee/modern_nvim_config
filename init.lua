print("Load config 0.1.1")

-- options
require("options.common")
require("options.lsp")

-- plugins
require("plugins.load")
require("plugins.colorscheme")
require("plugins.mason")
require("plugins.lualine")
require("plugins.fzf")
require("plugins.blink-cmp")
require("plugins.neotest")
require("plugins.treesitter")
require("plugins.bufferline")
require("plugins.notify")
require("plugins.noice")
require("plugins.mini_pairs")
require("plugins.mini_surround")

-- keymaps
require("keymaps.common")
require("keymaps.fzf")
require("keymaps.mason")
require("keymaps.lazygit")
require("keymaps.neotest")
require("keymaps.bufferline")

-- autocmd
require("autocmd.copy")
