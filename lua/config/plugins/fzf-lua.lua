return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },
	opts = function(_)
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
		{ "<leader>i", function() require("fzf-lua").files({ fd_opts = "--no-ignore --hidden --exclude node_modules --exclude .next --exclude build --exclude dist --exclude .git" }) end, desc = "Find files" },
		{ "<leader>/", "<cmd>FzfLua grep_project<cr>", desc = "Live Grep" },
		{ "<leader>co", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Document Symbols" },
		{ "<leader>cp", "<cmd>FzfLua lsp_workspace_symbols<cr>", desc = "Workspace Symbols" },
		{ "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
		{ "<leader>fr", "<cmd>FzfLua oldfiles<cr>", desc = "Recent Files" },
		{ "<leader>fR", "<cmd>FzfLua resume<cr>", desc = "Resume Last Picker" },
		{ "<leader>fd", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace Diagnostics" },
		{ "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "Keymaps" },
		{ "<leader>fc", "<cmd>FzfLua commands<cr>", desc = "Commands" },
		{ "<leader>gb", "<cmd>FzfLua git_branches<cr>", desc = "Git Branches" },
		{ "<leader>gc", "<cmd>FzfLua git_commits<cr>", desc = "Git Commits" },
		{ "<leader>gs", "<cmd>FzfLua git_stash<cr>", desc = "Git Stash" },
	},
}
