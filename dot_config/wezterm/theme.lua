local wezterm = require("wezterm")

local M = {}

function M.apply_to_config(config)
	config.tab_bar_at_bottom = true
	config.use_fancy_tab_bar = false
	config.window_decorations = "RESIZE"
	config.window_padding = {
		left = 100,
		right = 100,
		top = 10,
		bottom = 5,
	}

	config.custom_block_glyphs = false

	config.font = wezterm.font_with_fallback({ "Hack Nerd Font Mono", "Cascadia Code" })
	config.font_size = 10
	config.colors = {
		foreground = "#f5f5f5",
		background = "#121212",
		cursor_bg = "#f5f5f5",
		cursor_fg = "#121212",
		cursor_border = "#f5f5f5",
		selection_fg = "#f5f5f5",
		selection_bg = "#1d1d1d",
		scrollbar_thumb = "#121212",
		split = "#121212",
		ansi = {
			"#121212",
			"#B14242",
			"#D87C4A",
			"#E49A44",
			"#4A8B8B",
			"#a7a7a7",
			"#b4b4b4",
			"#d5d5d5",
		},
		brights = {
			"#949494",
			"#B14242",
			"#D87C4A",
			"#E49A44",
			"#4A8B8B",
			"#a7a7a7",
			"#b4b4b4",
			"#d5d5d5",
		},
	}
	local bg = wezterm.home_dir .. "/rs/bg.jpg"
	config.background = {
		{
			source = { File = bg },
			hsb = { brightness = 0.1 },
			width = "100%",
		},
	}
end

return M
