return {
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",

		opts = {
			signs = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "▁" },
				topdelete = { text = "▔" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},

			word_diff = true,
			current_line_blame = false,
		},

		config = function(_, opts)
			require("gitsigns").setup(opts)

			vim.api.nvim_set_hl(0, "GitSignsAdd", {
				fg = "#6FA05F",
			})

			vim.api.nvim_set_hl(0, "GitSignsChange", {
				fg = "#B89555",
			})

			vim.api.nvim_set_hl(0, "GitSignsDelete", {
				fg = "#A8545C",
			})

			vim.api.nvim_set_hl(0, "GitSignsChangedelete", {
				fg = "#A8545C",
			})

			vim.api.nvim_set_hl(0, "GitSignsTopdelete", {
				fg = "#A8545C",
			})

			vim.api.nvim_set_hl(0, "GitSignsUntracked", {
				fg = "#4F9292",
			})
		end,
	},
}
