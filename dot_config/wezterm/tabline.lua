local wezterm = require("wezterm")
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

local M = {}

function M.apply_to_config(config)
	tabline.setup({
		options = {
			theme_overrides = {
				normal_mode = {
					a = { fg = "#f5f5f5", bg = "#B14242", bold = true },
					b = { fg = "#B14242", bg = "#1d1d1d" },
					c = { fg = "#f5f5f5", bg = "#121212" },
				},
				tab = {
					active = { fg = "#f5f5f5", bg = "#B14242", bold = true },
					inactive = { fg = "#949494", bg = "#121212" },
					inactive_hover = { fg = "#f5f5f5", bg = "#1d1d1d" },
				},
			},
			section_separators = "",
			component_separators = "",
			tab_separators = "",
		},
	})

	tabline.apply_to_config(config)
end

return M
