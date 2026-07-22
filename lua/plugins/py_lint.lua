local lint = require("lint")

lint.linters_by_ft = {
    python = { "pylint" },
}

-- Создаём группу автокоманд для линтинга
local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

-- Автокоманды для запуска линтинга при открытии буфера
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "BufWritePost" }, {
    group = lint_augroup,
    callback = function()
        lint.try_lint()
    end,
    desc = "Запустить линтинг при открытии файла или создании нового"
})

-- Set pylint to work in virtualenv
lint.linters.pylint.cmd = 'python'
lint.linters.pylint.args = {'-m', 'pylint', '-f', 'json'}
