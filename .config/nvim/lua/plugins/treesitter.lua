return {
	{ "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },

	{
		"nvim-treesitter/nvim-treesitter",
			opts = {
				ensure_installed = {
					"query",
					"astro",
					"bash",
					"cmake",
					"cpp",
					"css",
					"fish",
					"gitignore",
					"go",
					"graphql",
					"http",
					"java",
					"lua",
					"php",
					"rust",
					"scss",
					"sql",
					"svelte",
					"vim",
					"vimdoc",
				},

			-- matchup = {
			-- 	enable = true,
			-- },

			-- https://github.com/nvim-treesitter/playground#query-linter
			query_linter = {
				enable = true,
				use_virtual_text = true,
				lint_events = { "BufWrite", "CursorHold" },
			},

			playground = {
				enable = true,
				disable = {},
				updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
				persist_queries = true, -- Whether the query persists across vim sessions
				keybindings = {
					toggle_query_editor = "o",
					toggle_hl_groups = "i",
					toggle_injected_languages = "t",
					toggle_anonymous_nodes = "a",
					toggle_language_display = "I",
					focus_language = "f",
					unfocus_language = "F",
					update = "R",
					goto_node = "<cr>",
					show_help = "?",
				},
			},
		},
	config = function(_, opts)
		local ok, configs = pcall(require, "nvim-treesitter.config")
		if not ok then
			configs = require("nvim-treesitter.configs")
		end

		configs.setup(opts)

		vim.treesitter.language.register("markdown", "mdx")
	end,
	},
}
