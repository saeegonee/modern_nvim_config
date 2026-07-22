local Popup = require("nui.popup")

local function messages_handle()

    local messages = vim.api.nvim_exec2("messages", { output = true })
    -- for _, t in pairs(messages) do
    --     print(t)
    -- end
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(messages, "\n", { trimempty = true }))

    -- Create  nui float window
    local popup = Popup({
        enter = true,
        focusable = true,
        relative = "editor",
        border = {
            style = "rounded",
            text = {
                top = " Messages ",
                top_align = "center",
            },
            padding = {
                top = 1,
                left = 2,
            },
        },
        position = {
            row = "50%",
            col = "99%",
        },
        size = {
            width = "50%",
            height = "92%",
        },
    })

    -- Window control
    popup:map("n", "q", function() popup:unmount() end, { noremap = true })

    -- Window content

    -- Open window
    popup:mount()
end

-- vim.keymap.set("n", "<Leader>mm", function() messages_handle() end, { desc = "LSP References in Nui" })
