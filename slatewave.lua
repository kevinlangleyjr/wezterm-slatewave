-- Slatewave — WezTerm color scheme (Lua)
-- https://getslatewave.com
--
-- Pure-Lua mirror of `slatewave.toml` for users who'd rather register the
-- scheme inline than drop a TOML into `~/.config/wezterm/colors/`. Returns a
-- color-scheme table compatible with `config.color_schemes`.
--
--   local wezterm = require 'wezterm'
--   local config  = wezterm.config_builder()
--   config.color_schemes = { Slatewave = require 'slatewave' }
--   config.color_scheme  = 'Slatewave'
--   return config

return {
  foreground = '#e2e8f0',
  background = '#282c34',

  cursor_bg      = '#5eead4',
  cursor_fg      = '#282c34',
  cursor_border  = '#5eead4',
  compose_cursor = '#fbbf24',

  selection_fg = '#e2e8f0',
  selection_bg = '#334155',

  scrollbar_thumb = '#475569',
  split           = '#21252b',

  -- Normal — mirrors terminal.ansi* in vscode-slatewave
  ansi = {
    '#1e293b', -- black   slate-800
    '#fb7185', -- red     rose-400
    '#5eead4', -- green   teal-300
    '#b45309', -- yellow  amber-700
    '#38bdf8', -- blue    sky-400
    '#b388ff', -- magenta
    '#0e7490', -- cyan    cyan-700
    '#e2e8f0', -- white   slate-200
  },

  -- Bright — mirrors terminal.ansiBright* in vscode-slatewave
  brights = {
    '#475569', -- slate-600
    '#ef5350',
    '#99f6e4', -- teal-200
    '#fbbf24', -- amber-400
    '#7dd3fc', -- sky-300
    '#c4b5fd', -- violet-300
    '#67e8f9', -- cyan-300
    '#f1f5f9', -- slate-100
  },

  copy_mode_active_highlight_bg   = { Color = '#5eead4' },
  copy_mode_active_highlight_fg   = { Color = '#282c34' },
  copy_mode_inactive_highlight_bg = { Color = '#38bdf8' },
  copy_mode_inactive_highlight_fg = { Color = '#282c34' },

  quick_select_label_bg = { Color = '#fbbf24' },
  quick_select_label_fg = { Color = '#282c34' },
  quick_select_match_bg = { Color = '#b45309' },
  quick_select_match_fg = { Color = '#e2e8f0' },

  tab_bar = {
    background        = '#21252b',
    inactive_tab_edge = '#334155',

    active_tab = {
      bg_color  = '#282c34',
      fg_color  = '#e2e8f0',
      intensity = 'Bold',
    },
    inactive_tab = {
      bg_color = '#21252b',
      fg_color = '#cbd5e1',
    },
    inactive_tab_hover = {
      bg_color = '#334155',
      fg_color = '#e2e8f0',
      italic   = false,
    },
    new_tab = {
      bg_color = '#21252b',
      fg_color = '#cbd5e1',
    },
    new_tab_hover = {
      bg_color = '#334155',
      fg_color = '#5eead4',
      italic   = false,
    },
  },
}
