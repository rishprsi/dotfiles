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
			doc = {
				-- enable image viewer for documents
				-- a treesitter parser must be available for the enabled languages.
				enabled = true,
				-- render the image inline in the buffer
				-- if your env doesn't support unicode placeholders, this will be disabled
				-- takes precedence over `opts.float` on supported terminals
				inline = false,
				float = true,
			},

			icons = {
				math = "󰪚 ",
				chart = "󰄧 ",
				image = " ",
			},
			convert = {
				notify = true,
			},
		},
		dashboard = {
			preset = {

				header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
			},
			sections = {
				{ section = "header" },
				{
					pane = 2,
					section = "terminal",
					cmd = "chafa ~/.config/assets/logo.jpeg --size 50x15 --stretch",
					height = 15,
					padding = 1,
				},
				{
					pane = 2,
					icon = " ",
					title = "Recent Files",
					section = "recent_files",
					indent = 2,
					padding = 1,
				},
				{ section = "keys", gap = 1, padding = 1 },
				{
					pane = 2,
					icon = " ",
					title = "Git Status",
					section = "terminal",
					enabled = function()
						return Snacks.git.get_root() ~= nil
					end,
					cmd = "git status --short --branch --renames",
					height = 5,
					padding = 1,
					ttl = 5 * 60,
					indent = 3,
				},
				{ section = "startup" },
			},
		},
	},
}
