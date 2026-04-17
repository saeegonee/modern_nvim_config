local Popup = require("nui.popup")
local event = require("nui.utils.autocmd").event

local popup = Popup({
    enter = true,
    focusable = true,
    border = {
        style = "rounded",
        text = {
            top = " Custom window ",
            top_align = "center",
        },
    },
    position = "50%",
    size = {
        width = "60%",
        height = "40%",
    },
})

-- Open window
popup:mount()

-- Window content
vim.api.nvim_buf_set_lines(popup.bufnr, 0, 1, false,
    { "Привет! Это окно создано через nui.nvim", "", "Нажми 'q', чтобы закрыть." })

-- Set keymap
popup:map("n", "q", function()
        popup:unmount()
    end,
    { noremap = true })

-- Event
popup:on(event.BufLeave, function()
    popup:unmount()
end)
