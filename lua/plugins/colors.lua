return {
	{
		"catppuccin/nvim",
		opts = {
			flavour = "mocha", -- ensures the correct variant is targeted
			transparent_background = true,
			color_overrides = {
				mocha = {
					-- Base colors
					base = "#1C1E26", -- background
					mantle = "#232530", -- backgroundAlt
					crust = "#1A1C23", -- border

					-- Text
					text = "#BBBBBB", -- gray
					subtext0 = "#797B80", -- sidebar_fg
					subtext1 = "#6C6F93", -- accentAlt
					overlay0 = "#6C6D71", -- delimiter
					overlay1 = "#4C4D53", -- comment
					overlay2 = "#44475D", -- codelens

					-- Colors
					blue = "#24A1AD", -- func
					sapphire = "#25B0BC", -- turquoise
					sky = "#26BBD9", -- ansi.normal.blue
					teal = "#29D398", -- ansi.normal.green
					green = "#E4A88A", -- string color
					yellow = "#E4B28E", -- structure/type
					peach = "#DB887A", -- constant/code_block
					maroon = "#D55070", -- variable/class_variable
					red = "#E95678", -- ansi.normal.red
					mauve = "#A86EC9", -- keyword/storage/special_keyword
					pink = "#EE64AC", -- ansi.normal.magenta
					flamingo = "#D55070", -- variable/class_variable
					lavender = "#B877DB", -- syntax.lavender
				},
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-mocha",
		},
	},
}
