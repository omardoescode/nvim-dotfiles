return {
	"ibhagwan/fzf-lua",
	lazy = false,
	dependencies = { "echasnovski/mini.icons" },
	opts = function(_, opts)
		local fzf = require("fzf-lua")
		local config = fzf.config

		-- Quickfix
		config.defaults.keymap.fzf["ctrl-q"] = "select-all+accept"
		config.defaults.keymap.fzf["ctrl-u"] = "half-page-up"
		config.defaults.keymap.fzf["ctrl-d"] = "half-page-down"
		config.defaults.keymap.fzf["ctrl-x"] = "jump"
		config.defaults.keymap.fzf["ctrl-f"] = "preview-page-down"
		config.defaults.keymap.fzf["ctrl-b"] = "preview-page-up"
		config.defaults.keymap.builtin["<c-f>"] = "preview-page-down"
		config.defaults.keymap.builtin["<c-b>"] = "preview-page-up"
	end,
	keys = {
		{ "<leader>i", "<cmd>FzfLua files<cr>", desc = "Find in files" },
		{ "<leader>/", "<cmd>FzfLua grep_project<cr>", desc = "Live Grep" },
	},
}
