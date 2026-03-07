return {
	{
		"xiyaowong/transparent.nvim",
		priority = 1000,
		config = function()
			require("transparent").setup({
				extra_groups = { "WinSeparator" },
				exclude_groups = {},
			})

			vim.cmd("TransparentEnable")
		end,
	},
	{
		"ficcdaf/ashen.nvim",
		-- optional but recommended,
		-- pin to the latest stable release:
		lazy = false,
		priority = 1000,
		-- configuration is optional!
		config = function()
			require("ashen").load()
		end,
	},
}
