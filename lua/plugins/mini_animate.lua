local animate = require("mini.animate")
animate.setup({
    cursor = {
        enable = false,
        -- timing = animate.gen_timing.linear({ duration = 70, unit = 'total' }),
    },
    scroll = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 50, unit = 'total' }),
    },
})
