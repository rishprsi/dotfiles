return {
	-- Add and configure the Vesper colorscheme
	{
		"datsfilipe/vesper.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optional setup if you prefer to use vim.cmd
			-- vim.cmd.colorscheme("vesper")
			require("vesper").setup({
				palette_overrides = {
					bg = "#000000", -- pure black editor background
					bgDark = "#000000",
					bgDarker = "#000000",
					bgFloat = "#000000",
				},
				overrides = {
					Statement = { fg = "#9A93C0" }, -- Keyword links here → covers @keyword, PreProc
					["@keyword.operator"] = { fg = "#A0A0A0" },
					CursorLine = { bg = "#262626" },
					Pmenusel = { bg = "#262626" },
					Visual = { bg = "#332a22" },
				},
			})
		end,
	},

	-- Tell LazyVim to use Vesper as the default colorscheme
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "vesper",
		},
	},
}
