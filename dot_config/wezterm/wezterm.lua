local wezterm = require("wezterm") ---@type Wezterm
local config = wezterm.config_builder() ---@type Config

require("tabline").apply_to_config(config)
require("keybinds").apply_to_config(config)
require("theme").apply_to_config(config)

config.default_prog = { "pwsh.exe", "-NoLogo" }

return config
