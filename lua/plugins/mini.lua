require("mini.pairs").setup(
-- No need to copy this inside `setup()`. Will be used automatically.
    {
        -- In which modes mappings from this `config` should be created
        modes = { insert = true, command = false, terminal = false },

        -- Global mappings. Each right hand side should be a pair information, a
        -- table with at least these fields (see more in |MiniPairs.map|):
        -- - <action> - one of 'open', 'close', 'closeopen'.
        -- - <pair> - two character string for pair to be used.
        -- By default pair is not inserted after `\`, quotes are not recognized by
        -- <CR>, `'` does not insert the pair after a letter.
        -- Only parts of tables can be tweaked (others will use these efaults).
        mappings = {
            ['('] = { action = 'open', pair = '()', neigh_pattern = '^[^\\]' },
            ['['] = { action = 'open', pair = '[]', neigh_pattern = '^[^\\]' },
            ['{'] = { action = 'open', pair = '{}', neigh_pattern = '^[^\\]' },

            [')'] = { action = 'close', pair = '()', neigh_pattern = '^[^\\]' },
            [']'] = { action = 'close', pair = '[]', neigh_pattern = '^[^\\]' },
            ['}'] = { action = 'close', pair = '{}', neigh_pattern = '^[^\\]' },

            ['"'] = { action = 'closeopen', pair = '""', neigh_pattern = '^[^\\]', register = { cr = false } },
            ["'"] = { action = 'closeopen', pair = "''", neigh_pattern = '^[^%a\\]', register = { cr = false } },
            ['`'] = { action = 'closeopen', pair = '``', neigh_pattern = '^[^\\]', register = { cr = false } },
        },
    }
)

require("mini.surroun").setup(
-- No need to copy this inside `setup()`. Will be used automatically.
    {
        -- Add custom surroundings to be used on top of builtin ones. For more
        -- information with examples, see `:h MiniSurround.config`.
        custom_surroundings = nil,

        -- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
        highlight_duration = 500,

        -- Module mappings. Use `''` (empty string) to disable one.
        mappings = {
            add = 'sa', -- Add surrounding in Normal and Visual modes
            delete = 'sd', -- Delete surrounding
            replace = 'sr', -- Replace surrounding
            -- find = 'sf', -- Find surrounding (to the right)
            -- find_left = 'sF', -- Find surrounding (to the left)
            -- highlight = 'sh', -- Highlight surrounding

            -- suffix_last = 'l', -- Suffix to search with "prev" method
            -- suffix_next = 'n', -- Suffix to search with "next" method
        },

        -- Number of lines within which surrounding is searched
        n_lines = 20,

        -- Whether to respect selection type:
        -- - Place surroundings on separate lines in linewise mode.
        -- - Place surroundings on each line in blockwise mode.
        respect_selection_type = false,

        -- How to search for surrounding (first inside current line, then inside
        -- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
        -- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
        -- see `:h MiniSurround.config`.
        search_method = 'cover',

        -- Whether to disable showing non-error feedback
        -- This also affects (purely informational) helper messages shown after
        -- idle time if user input is required.
        silent = false,
    }
)
