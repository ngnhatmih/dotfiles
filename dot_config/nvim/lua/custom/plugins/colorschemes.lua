return {
	{
		"maxmx03/fluoromachine.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			local fm = require("fluoromachine")
			fm.setup({
				glow = true,
				theme = "fluoromachine",
				transparent = true,
			})
			vim.cmd.colorscheme("fluoromachine")
		end,
	},
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
		priority = 900,
		config = function()
			local transparent = require("transparent")
			transparent.setup({
				extra_groups = {
					"WinSeparator",
					"NvimTreeNormal",
					"NvimTreeNormalNC",
					"NvimTreeWinSeparator",
					"NvimTreeEndOfBuffer",
					"NeoTreeNormal",
					"NeoTreeNormalNC",
					"NeoTreeWinSeparator",
					"NeoTreeEndOfBuffer",
					"OilNormal",
					"OilNormalNC",
					"SignColumn",
					"NormalFloat",
					"FloatBorder",
				},
			})

			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "*",
				callback = function()
					transparent.clear_prefix("NvimTree")
					transparent.clear_prefix("NeoTree")
					transparent.clear_prefix("Oil")
					transparent.clear_prefix("MiniFiles")
				end,
			})

			vim.cmd("TransparentEnable")
		end,
	},
	{
		"ficcdaf/ashen.nvim",
		lazy = true,
		priority = 1000,
		config = function()
			require("ashen").load()
		end,
	},
}
