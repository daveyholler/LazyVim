return {
	{
		"rose-pine/neovim",
		name = "rose-pine-moon",
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true,
					migrations = true,
				},

				styles = {
					bold = true,
					italic = true,
					transparency = true, -- ✅ THIS is the transparency toggle
				},
			})

			vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
			vim.cmd("highlight NormalNC guibg=NONE ctermbg=NONE")
			vim.cmd("highlight NormalFloat guibg=NONE ctermbg=NONE")
			vim.cmd("highlight FloatBorder guibg=NONE ctermbg=NONE")
			vim.cmd("highlight VertSplit guibg=NONE ctermbg=NONE")
			vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
			vim.cmd("highlight EndOfBuffer guibg=NONE ctermbg=NONE")
			vim.cmd("colorscheme rose-pine-moon")
		end,
	},
}
