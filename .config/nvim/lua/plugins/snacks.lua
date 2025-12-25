-- lazy.nvim
return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		styles = {
			snacks_image = {
				snacks_image = function()
					return {
						relative = "cursor",
						border = "none",
						focusable = false,
						backdrop = false,
						row = 0,
						col = 0,
					}
				end,
			},
		},
		image = {
			enabled = true,
		},
		dashboard = {
			sections = {
				{
					section = "terminal",
					cmd = "chafa ~/Downloads/logo.jpeg --size 60x17 --stretch; sleep .1",
					height = 17,
					padding = 1,
				},
				{
					pane = 2,
					{ section = "keys", gap = 1, padding = 1 },
					{ section = "startup" },
				},
			},
		},
	},
}
