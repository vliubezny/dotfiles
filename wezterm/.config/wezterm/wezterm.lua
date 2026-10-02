local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"

-- config.enable_tab_bar = false

config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 18

config.initial_cols = 80
config.initial_rows = 20

config.color_scheme = 'Tokyo Night Moon'

return config
