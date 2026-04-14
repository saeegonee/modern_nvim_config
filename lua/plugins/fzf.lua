-- local actions = require('fzf-lua.actions')
require("fzf-lua").setup({
    winopts = {
        backdrop = 85,
        width = 0.6,
        preview = {
            layout = "vertical",
            vertical = "up:50%"
        }
    },
    files = {
        file_ignore_patterns = {
            "icon/*",
            "Content/*",
            "Fonts/*",
            "Materials/*",
            "Scenes/*",
            "Themes/*"
        }
    },
    -- keymap = {
    --     builtin = {
    --         ["<C-f>"] = "preview-page-down",
    --         ["<C-b>"] = "preview-page-up",
    --         ["<C-p>"] = "toggle-preview",
    --     },
    --     fzf = {
    --         ["ctrl-a"] = "toggle-all",
    --         ["ctrl-t"] = "first",
    --         ["ctrl-g"] = "last",
    --         ["ctrl-d"] = "half-page-down",
    --         ["ctrl-u"] = "half-page-up",
    --     }
    -- },
    -- actions = {
    --     files = {
    --         ["ctrl-q"] = actions.file_sel_to_qf,
    --         ["ctrl-n"] = actions.toggle_ignore,
    --         ["ctrl-h"] = actions.toggle_hidden,
    --         ["enter"]  = actions.file_edit_or_qf,
    --     }
    -- }
})
