return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				"rose-pine",
				"sonokai",
				"tokyonight",
				"ayu",
				"ayu-dark",
				"ayu-light",
				"catppuccin-latte",
				"catppuccin-mocha",
				"gruvbox",
				"solarized-osaka",
			},
		})
	end,
	keys = {
		{ "<leader>th", "<cmd>Themery<cr>", desc = "Change Theme" },
	},
}
