local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("JetBrains Mono")
config.font_size = 15
config.enable_tab_bar = false
config.initial_cols = 110
config.initial_rows = 30
config.window_decorations = "RESIZE"
config.color_scheme = "Tokyo Night"

return config
