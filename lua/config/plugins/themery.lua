return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				"rose-pine",
				"rose-pine-dawn",
				"rose-pine-moon",
				"sonokai",
				"tokyonight-night",
				"tokyonight-storm",
				"tokyonight-day",
				"tokyonight-moon",
				"ayu",
				"ayu-dark",
				"ayu-light",
				"catppuccin-latte",
				"catppuccin-mocha",
				"catppuccin-macchiato",
				"catppuccin-frappe",
				"gruvbox",
				"kanagawa",
				"horizon",
				"solarized-osaka",
				"material-oceanic",
				"material-deep-ocean",
				"material-palenight",
				"material-lighter",
				"material-darker",
			},
		})
	end,
	keys = {
		{ "<leader>th", "<cmd>Themery<cr>", desc = "Change Theme" },
	},
}
