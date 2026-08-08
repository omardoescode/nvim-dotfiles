return {
	{
		"romus204/tree-sitter-manager.nvim",
		config = function()
			require("tree-sitter-manager").setup({
				ensure_installed = {
					"json",
					"javascript",
					"typescript",
					"tsx",
					"yaml",
					"html",
					"css",
					"prisma",
					"markdown",
					"markdown_inline",
					"svelte",
					"graphql",
					"bash",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
					"query",
					"vimdoc",
					"c",
					"cpp",
					"java",
					"cmake",
				},
			})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = "main",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("nvim-treesitter-textobjects").setup({
				select = { lookahead = true },
				move = { set_jumps = true },
			})

			local select = require("nvim-treesitter-textobjects.select")
			local move = require("nvim-treesitter-textobjects.move")

			local function sel(obj)
				return function()
					select.select_textobject(obj, "textobjects")
				end
			end
			local function go(fn, obj)
				return function()
					move[fn](obj, "textobjects")
				end
			end

			-- Select function / class (i = inner body, a = whole incl. signature)
			vim.keymap.set({ "x", "o" }, "af", sel("@function.outer"), { desc = "around function" })
			vim.keymap.set({ "x", "o" }, "if", sel("@function.inner"), { desc = "inner function" })
			vim.keymap.set({ "x", "o" }, "ac", sel("@class.outer"), { desc = "around class" })
			vim.keymap.set({ "x", "o" }, "ic", sel("@class.inner"), { desc = "inner class" })

			-- Navigate to next / previous function & class
			vim.keymap.set({ "n", "x", "o" }, "]f", go("goto_next_start", "@function.outer"), { desc = "Next function" })
			vim.keymap.set({ "n", "x", "o" }, "[f", go("goto_previous_start", "@function.outer"), { desc = "Prev function" })
			vim.keymap.set({ "n", "x", "o" }, "]c", go("goto_next_start", "@class.outer"), { desc = "Next class" })
			vim.keymap.set({ "n", "x", "o" }, "[c", go("goto_previous_start", "@class.outer"), { desc = "Prev class" })
		end,
	},
}
