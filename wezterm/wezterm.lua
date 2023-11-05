local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

return {
	default_prog = { "powershell.exe" },
	color_scheme = "Catppuccin Macchiato",
	font = wezterm.font("FiraCode Nerd Font"),
	font_size = 14,
	adjust_window_size_when_changing_font_size = false,
	use_dead_keys = false,
	scrollback_lines = 5000,
	window_decorations = "RESIZE",
	window_padding = { left = 4, right = 4, top = 4, bottom = 4 },
}
