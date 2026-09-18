require("dapui").setup({
    controls = {
        element = "repl",
        enabled = true,
        icons = {
            disconnect = "",
            pause = "",
            play = "",
            run_last = "",
            step_back = "",
            step_into = "",
            step_out = "",
            step_over = "",
            terminate = ""
        }
    },
    element_mappings = {},
    expand_lines = true,
    floating = {
        border = "single",
        mappings = {
            close = { "q", "<Esc>" }
        }
    },
    force_buffers = true,
    icons = {
        collapsed = "",
        current_frame = "",
        expanded = ""
    },
    layouts = { {
        elements = {
            {
                id = "scopes",
                size = 0.5
            },
            {
                id = "breakpoints",
                size = 0.15
            },
            {
                id = "stacks",
                size = 0.15
            },
            -- {
            --     id = "watches",
            --     size = 0.1
            -- },
            {
                id = "repl",
                size = 0.2
            }
        },
        position = "left",
        size = 120
    },
    -- {
    --     elements = {  {
    --         id = "console",
    --         size = 0.7
    --     } },
    --     position = "bottom",
    --     size = 4
    -- } 
    },
    mappings = {
        edit = "e",
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        repl = "r",
        toggle = "t"
    },
    render = {
        indent = 1,
        max_value_lines = 100
    }
})
