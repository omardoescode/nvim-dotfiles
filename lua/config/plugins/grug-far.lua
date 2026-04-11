return {
	"MagicDuck/grug-far.nvim",
	cmd = "GrugFar",
	keys = {
		{ "<leader>sr", "<cmd>GrugFar<cr>", desc = "Search and Replace" },
		{
			"<leader>sw",
			function()
				require("grug-far").with_visual_selection()
			end,
			mode = "v",
			desc = "Search selection",
		},
	},
	opts = {},
}
