local wezterm = require("wezterm") ---@type Wezterm
local config = wezterm.config_builder() ---@type Config

require("tabline").apply_to_config(config)
require("keybinds").apply_to_config(config)
require("theme").apply_to_config(config)

local target = wezterm.target_triple

if target:find("windows") then
	config.default_prog = { "wsl.exe", "-d", "Ubuntu", "--cd", "~" }
end

config.default_cwd = wezterm.home_dir

return config
