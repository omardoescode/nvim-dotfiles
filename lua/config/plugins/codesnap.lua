return {
	"mistricky/codesnap.nvim",
	build = "make",
	keys = {
		{ "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
		{
			"<leader>cs",
			"<cmd>CodeSnapSave<cr>",
			mode = "x",
			desc = "Save selected code snapshot in ~/Pictures/Codesnaps/",
		},
	},
	config = function()
		require("codesnap").setup({
			save_path = "~/Pictures/Codesnaps/",
			title = "omardoescode",
			bg_theme = "grape",
		})
	end,
}
