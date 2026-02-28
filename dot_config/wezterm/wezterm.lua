local wezterm = require("wezterm") ---@type Wezterm
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
local config = wezterm.config_builder() ---@type Config

config.font = wezterm.font("Hack Nerd Font Mono")
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
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 100,
	right = 100,
	top = 10,
	bottom = 5,
}

config.background = {
	{
		source = { File = wezterm.config_dir .. "/rs/background.jpg" },
		hsb = { brightness = 0.1 },
		width = "100%",
	},
}

config.disable_default_mouse_bindings = true

config.default_prog = { "pwsh.exe", "-NoLogo" }

config.keys = {
	-- split tab/pane
	{
		key = "%",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = '"',
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	-- Close tab
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	-- Copy mode
	{
		key = "c",
		mods = "ALT",
		action = wezterm.action.ActivateCopyMode,
	},
	-- Fullscreen
	{
		key = "Enter",
		mods = "ALT",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
