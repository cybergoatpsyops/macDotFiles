local wezterm = require("wezterm")

return {
	-- Set the color scheme to Gruvbox Dark
	color_scheme = "Gruvbox Dark (Gogh)",

	-- Customize the Gruvbox colors
	colors = {
		-- Background color of the terminal
		background = "#282828",

		-- Foreground color of the terminal
		foreground = "#ebdbb2",

		-- Cursor color
		cursor_bg = "#ebdbb2",
		cursor_fg = "#282828",
		cursor_border = "#ebdbb2",

		-- Color of selected text
		selection_bg = "#504945",
		selection_fg = "#ebdbb2",

		-- Color of split separators
		split = "#3c3836",

		-- Customize the tab bar colors
		tab_bar = {
			-- Background color of the tab bar
			background = "#1d2021",

			-- Color of the active tab
			active_tab = {
				bg_color = "#3c3836",
				fg_color = "#ebdbb2",
				intensity = "Normal",
				underline = "None",
				italic = false,
				strikethrough = false,
			},

			-- Color of inactive tabs
			inactive_tab = {
				bg_color = "#282828",
				fg_color = "#a89984",
			},

			-- Color of the new tab button
			new_tab = {
				bg_color = "#282828",
				fg_color = "#a89984",
			},
		},
	},

	-- Set the font and font size
	font = wezterm.font("Hasklug Nerd Font"),
	font_size = 16.0,

	-- Enable font ligatures
	harfbuzz_features = { "calt=1", "clig=1", "liga=1" },

	-- Customize the window appearance
	window_background_opacity = 0.95,
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},

	-- Enable the tab bar and customize its appearance
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	tab_max_width = 25,
}
