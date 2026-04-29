vim.api.nvim_create_autocmd(
    { "BufRead", "BufNewFile" },
    {
        group = vim.api.nvim_create_augroup("HighlightFullWithSpace", {}),
        pattern = "*",
        callback = function()
            local grp = "hlTODO"
            vim.fn.matchadd(grp, "TODO: .*")
            vim.api.nvim_set_hl(0, grp, {
                fg = "#8bb33d",
            })
        end,
    }
)

-- vim.api.nvim_set_hl(0, "NonText", {
--     fg = "#50585d",
-- })

-- vim.api.nvim_set_hl(0, "EndOfBuffer", {
--     fg = "red",
-- })

-- vim.api.nvim_set_hl(0, "Comment", {
--     fg = "red",
-- })
