return {
	"folke/noice.nvim",
	opts = {
		routes = {
			{
				filter = {
					event = "lsp",
					kind = "progress",
					any = {
						{ find = "pyright" },
						{ find = "basedpyright" },
					},
				},
				opts = { skip = true },
			},
		},
	},
}
