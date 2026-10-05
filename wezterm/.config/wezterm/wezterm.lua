local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"

config.enable_tab_bar = true

config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 18

config.initial_cols = 80
config.initial_rows = 20

local scheme_name = 'Tokyo Night Moon'
config.color_scheme = scheme_name

local scheme = wezterm.color.get_builtin_schemes()[scheme_name]
local bg = scheme.background
local fg = scheme.foreground

config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  -- font = wezterm.font { family = 'Roboto', weight = 'Bold' },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 14.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = bg,

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = bg,
}

config.colors = {
  tab_bar = {
    inactive_tab_edge = bg,

    active_tab = {
      bg_color = bg,
      fg_color = fg,
    },

    inactive_tab = {
      bg_color = bg,
      fg_color = scheme.ansi[8]
    },

    inactive_tab_hover = {
      bg_color = bg,
      fg_color = scheme.tab_bar.inactive_tab_hover.fg_color,
    },

    new_tab = {
      bg_color = bg,
      fg_color = fg,
    },

    new_tab_hover = {
      bg_color = bg,
      fg_color = scheme.tab_bar.inactive_tab_hover.fg_color,
    },
  },
}

return config
