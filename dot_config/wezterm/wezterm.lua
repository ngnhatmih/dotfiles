local wezterm = require("wezterm") ---@type Wezterm
local config = wezterm.config_builder() ---@type Config

require("tabline").apply_to_config(config)
require("keybinds").apply_to_config(config)
require("theme").apply_to_config(config)

local target = wezterm.target_triple

config.default_domain = "WSL:Ubuntu"
config.default_cwd = wezterm.home_dir

return config
