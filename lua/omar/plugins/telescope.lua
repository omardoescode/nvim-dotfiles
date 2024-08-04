return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
		"debugloop/telescope-undo.nvim",
		"andrew-george/telescope-themes",
		"AckslD/nvim-neoclip.lua",
		"ibhagwan/fzf-lua",
	},
	opts = {
		extensions = {
			themes = {},
		},
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				vimgrep_arguments = {
					"rg",
					"-L",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
				},
				file_ignore_patterns = {
					"node_modules",
					"build",
					"dist",
					"yarn.lock",
					".dist",
					"package-lock.json",
					".idea",
				},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		-- Extensions
		telescope.load_extension("fzf")
		telescope.load_extension("undo")
		telescope.load_extension("themes")
		telescope.load_extension("neoclip")
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files in cwd" })
		keymap.set("n", "<leader>fh", "<cmd>Telescope find_files no_ignore=true<cr>", { desc = "Find hidden files" })
		keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Find git files" })
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
		keymap.set("n", "<leader>/", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find Todos" })
		keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>", { desc = "Find In Undo tree" })
		keymap.set("n", "<leader>fn", "<cmd>Telescope neoclip<cr>", { desc = "Clipboard Manager" })
		keymap.set("n", "<leader>:", "<cmd>Telescope command_history<cr>", { desc = "Command History" })
		keymap.set("n", "<leader>th", "<cmd>Telescope themes<cr>", { desc = "Change Themes" })
		keymap.set("n", "<leader>tt", "<cmd>TransparentToggle<cr>", { desc = "Transparency Toggle" })
		require("neoclip").setup({})
	end,
}
