local wezterm = require("wezterm")

local M = {}

function M.apply_to_config(config)
	config.disable_default_mouse_bindings = true
	config.keys = {
		-- Split tab/pane
		{
			key = "%",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = '"',
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		}, -- Close tab
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
		-- Reload config
		{
			key = "r",
			mods = "CTRL|SHIFT",
			action = wezterm.action.ReloadConfiguration,
		},
	}
end

return M
