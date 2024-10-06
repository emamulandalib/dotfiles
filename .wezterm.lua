local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- config.font = wezterm.font("Maple Mono", { weight = "Medium", italic = false })
-- config.font = wezterm.font("Monaspace Neon", { weight = "200", width = "100", italic = false })
config.font = wezterm.font("MonoLisa Trial", {
	weight = "Medium",
	italic = false,
	harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt", "dlig" },
})
-- config.font = wezterm.font_with_fallback({
-- 	{
-- 		family = "Monaspace Neon",
-- 		harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt", "dlig" },
-- 	},
-- })
config.font_size = 16
config.enable_tab_bar = false
config.initial_cols = 110
config.initial_rows = 30
config.window_decorations = "RESIZE"
config.color_scheme = "Tokyo Night"

return config
