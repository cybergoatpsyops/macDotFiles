local wezterm = require("wezterm")
local config = {}

-- Helper function to adjust opacity
local function adjust_opacity(window, delta)
	local overrides = window:get_config_overrides() or {}
	-- Get current opacity, default to your current setting if not set
	local current_opacity = overrides.window_background_opacity or 0.95
	-- Calculate new opacity and clamp between 0.1 and 1.0
	local new_opacity = math.max(0.1, math.min(1.0, current_opacity + delta))
	-- Update the override
	overrides.window_background_opacity = new_opacity
	window:set_config_overrides(overrides)
end

-- Define keybindings
config.keys = {
	-- Increase opacity with Cmd+Shift+Up (Mac) or Ctrl+Shift+Up (others)
	{
		key = "UpArrow",
		mods = "SHIFT|SUPER", -- Use CTRL instead of SUPER for non-Mac
		action = wezterm.action_callback(function(window, _pane)
			adjust_opacity(window, 0.1)
		end),
	},
	-- Decrease opacity with Cmd+Shift+Down (Mac) or Ctrl+Shift+Down (others)
	{
		key = "DownArrow",
		mods = "SHIFT|SUPER", -- Use CTRL instead of SUPER for non-Mac
		action = wezterm.action_callback(function(window, _pane)
			adjust_opacity(window, -0.1)
		end),
	},
	-- Reset opacity to default (0.95) with Cmd+Shift+R (Mac) or Ctrl+Shift+R (others)
	{
		key = "r",
		mods = "SHIFT|SUPER", -- Use CTRL instead of SUPER for non-Mac
		action = wezterm.action_callback(function(window, _pane)
			local overrides = window:get_config_overrides() or {}
			overrides.window_background_opacity = 0.95
			window:set_config_overrides(overrides)
		end),
	},
}

-- Your existing configuration
config.color_scheme = "Gruvbox Dark (Gogh)"
config.colors = {
	background = "#282828",
	foreground = "#ebdbb2",
	cursor_bg = "#ebdbb2",
	cursor_fg = "#282828",
	cursor_border = "#ebdbb2",
	selection_bg = "#504945",
	selection_fg = "#ebdbb2",
	split = "#3c3836",
	tab_bar = {
		background = "#1d2021",
		active_tab = {
			bg_color = "#3c3836",
			fg_color = "#ebdbb2",
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = "#282828",
			fg_color = "#a89984",
		},
		new_tab = {
			bg_color = "#282828",
			fg_color = "#a89984",
		},
	},
}

config.font = wezterm.font("Hasklug Nerd Font")
config.font_size = 16.0
config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }
config.window_background_opacity = 0.95
config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}
config.default_prog = { "/usr/local/bin/bash", "-l" }
config.set_environment_variables = {
	SHELL = "/usr/local/bin/bash",
}
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_max_width = 25
config.default_cursor_style = "SteadyBlock"
config.enable_csi_u_key_encoding = true
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"
config.cursor_blink_rate = 0
config.force_reverse_video_cursor = true

return config
