print("Load config 0.1.1")

-- options
require("options.common")
require("options.lsp")

-- plugins
require("plugins.colorscheme")
require("plugins.mason")
require("plugins.lualine")
require("plugins.fzf")
require("plugins.blink-cmp")
require("plugins.lazygit")
require("plugins.neotest")
require("plugins.treesitter")

-- keymaps
require("keymaps.common")
require("keymaps.fzf")
require("keymaps.mason")
require("keymaps.lazygit")

-- autocmd
require("autocmd.copy")
