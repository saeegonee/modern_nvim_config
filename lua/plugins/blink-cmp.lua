require("blink.cmp").setup({
	fuzzy = { implementation = "prefer_rust_with_warning" },
	signature = { enabled = true },
	keymap = {
		preset = "default",
		["<C-a>"] = { "select_and_accept" },
		["<C-v>"] = { "scroll_documentation_down", "fallback" },
		["<C-f>"] = { "scroll_documentation_up", "fallback" },

		-- ["<C-space>"] = {},
		-- ["<C-p>"] = {},
		-- ["<Tab>"] = {},
		-- ["<S-Tab>"] = {},
		-- ["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
		-- ["<C-k>"] = { "select_prev", "fallback" },
		-- ["<C-j>"] = { "select_next", "fallback" },
		-- ["<C-l>"] = { "snippet_forward", "fallback" },
		-- ["<C-h>"] = { "snippet_backward", "fallback" },
		-- ["<C-e>"] = { "hide" },
	},

	appearance = {
		use_nvim_cmp_as_default = true,
		nerd_font_variant = "normal",
	},

	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		}
	},

	cmdline = {
		keymap = {
			preset = "inherit",
			["<CR>"] = { "accept_and_enter", "fallback" },
		},
	},

	sources = { default = { "lsp" } }
})
