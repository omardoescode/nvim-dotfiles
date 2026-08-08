return {
	"Wansmer/treesj",
	keys = {
		{ "<leader>mm", function() require("treesj").toggle() end, desc = "Split/join toggle" },
		{ "<leader>mM", function() require("treesj").toggle({ split = { recursive = true } }) end, desc = "Split/join recursive" },
	},
	opts = { use_default_keymaps = false },
}
