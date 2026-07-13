return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	event = "VeryLazy",
	config = function(_, opts)
		local harpoon = require("harpoon")
		harpoon:setup(opts)

		local function refresh_number_labels()
			local items = harpoon:list().items

			for i = 1, 9 do
				local item = items[i]
				local index = i
				vim.keymap.set("n", "<leader>" .. index, function()
					harpoon:list():select(index)
				end, {
					desc = item and vim.fn.fnamemodify(item.value, ":t") or "which_key_ignore",
				})
			end
		end

		harpoon:extend({
			ADD = refresh_number_labels,
			REMOVE = refresh_number_labels,
			REPLACE = refresh_number_labels,
			LIST_CHANGE = refresh_number_labels,
			REORDER = refresh_number_labels,
		})

		refresh_number_labels()
	end,
}
