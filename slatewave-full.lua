-- Slatewave — WezTerm full bundle
-- https://getslatewave.com
--
-- Palette + opinionated typography/cursor/window defaults. Registers the
-- Slatewave color scheme inline (no dependency on `slatewave.toml` being
-- installed), then layers font (Hack Nerd Font Mono), a non-blinking block
-- cursor, and a fully opaque window — the same defaults used across the
-- Slatewave family.
--
--   local wezterm = require 'wezterm'
--   local config  = wezterm.config_builder()
--   require('slatewave-full').apply_to_config(config)
--   return config
--
-- Override individual defaults after `apply_to_config` — later assignments
-- win, so you can keep the palette and replace just the font, for example.

local wezterm = require 'wezterm'

local M = {}

M.colors = require 'slatewave'

function M.apply_to_config(config)
  config.color_schemes = config.color_schemes or {}
  config.color_schemes['Slatewave'] = M.colors
  config.color_scheme = 'Slatewave'

  config.font      = wezterm.font 'Hack Nerd Font Mono'
  config.font_size = 14.0

  config.default_cursor_style = 'SteadyBlock'
  config.cursor_blink_rate    = 0

  config.window_background_opacity = 1.0
  config.macos_window_background_blur = 0
end

return M
