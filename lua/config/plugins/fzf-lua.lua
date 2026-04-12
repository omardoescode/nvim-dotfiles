return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.icons" },
	opts = function()
		local fzf = require("fzf-lua")
		local config = fzf.config

		config.defaults.keymap.fzf["ctrl-q"] = "select-all+accept"
		config.defaults.keymap.fzf["ctrl-u"] = "half-page-up"
		config.defaults.keymap.fzf["ctrl-d"] = "half-page-down"
		config.defaults.keymap.fzf["ctrl-x"] = "jump"
		config.defaults.keymap.fzf["ctrl-f"] = "preview-page-down"
		config.defaults.keymap.fzf["ctrl-b"] = "preview-page-up"
		config.defaults.keymap.builtin["<c-f>"] = "preview-page-down"
		config.defaults.keymap.builtin["<c-b>"] = "preview-page-up"

		return {
			fzf_opts = {
				["--layout"] = "default",
				["--cycle"] = true,
			},
			winopts = {
				height = 0.85,
				width = 0.80,
				row = 0.35,
				col = 0.50,
				border = "rounded",
				backdrop = 100,
				treesitter = { enabled = true },
				preview = {
					border = "rounded",
					layout = "flex",
					flip_columns = 120,
					horizontal = "right:55%",
					vertical = "down:45%",
					delay = 40,
					title_pos = "center",
					scrollbar = "float",
				},
			},
			previewers = {
				builtin = {
					syntax_limit_l = 10000,
					syntax_limit_b = 1024 * 1024,
					limit_b = 1024 * 1024 * 10,
					treesitter = { enabled = true },
				},
			},
			files = {
				formatter = "path.filename_first",
				cwd_prompt = false,
			},
			grep = {
				rg_glob = true,
				glob_flag = "--iglob",
				glob_separator = "%s%-%-",
			},
			buffers = {
				formatter = "path.filename_first",
				winopts = { preview = { hidden = "hidden" } },
			},
			oldfiles = {
				formatter = "path.filename_first",
			},
			diagnostics = {
				winopts = { preview = { layout = "vertical" } },
			},
			keymaps = {
				winopts = { preview = { layout = "vertical" } },
			},
			git = {
				commits = {
					winopts = { preview = { layout = "vertical", vertical = "down:60%" } },
				},
				bcommits = {
					winopts = { preview = { layout = "vertical", vertical = "down:60%" } },
				},
			},
		}
	end,
	keys = {
		{ "<leader>i", function() require("fzf-lua").files({ fd_opts = "--no-ignore --hidden --exclude node_modules --exclude .next --exclude build --exclude dist --exclude .git" }) end, desc = "Find files" },
		{ "<leader>/", "<cmd>FzfLua grep_project<cr>", desc = "Live Grep" },
		{ "<leader>co", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "Document Symbols" },
		{ "<leader>cp", "<cmd>FzfLua lsp_workspace_symbols<cr>", desc = "Workspace Symbols" },
		{ "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
		{ "<leader>fr", function() require("fzf-lua").oldfiles({ cwd_only = true }) end, desc = "Recent Files (project)" },
		{ "<leader>fR", "<cmd>FzfLua oldfiles<cr>", desc = "Recent Files (all)" },
		{ "<leader>fl", "<cmd>FzfLua resume<cr>", desc = "Resume Last Picker" },
		{ "<leader>fd", "<cmd>FzfLua diagnostics_workspace<cr>", desc = "Workspace Diagnostics" },
		{ "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "Keymaps" },
		{ "<leader>fc", "<cmd>FzfLua commands<cr>", desc = "Commands" },
		{ "<leader>gb", "<cmd>FzfLua git_branches<cr>", desc = "Git Branches" },
		{ "<leader>gc", "<cmd>FzfLua git_commits<cr>", desc = "Git Commits" },
		{ "<leader>gs", "<cmd>FzfLua git_stash<cr>", desc = "Git Stash" },
	},
}
