return {
	"folke/which-key.nvim",
	dependencies = {
		"echasnovski/mini.ai",
	},
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local present, wk = pcall(require, "which-key")
		if not present then
			return
		end
		wk.add({
			{ "<leader>a", group = "harpoon" },
			{ "<leader>c", group = "code" },
			{ "<leader>e", group = "file explorer" },
			{ "<leader>f", group = "fzf_lua" },
			{ "<leader>h", group = "hunks" },
			{ "<leader>l", group = "lazy & lazygit" },
			{ "<leader>m", group = "format" },
			{ "<leader>n", group = "search" },
			{ "<leader>o", group = "obsidian" },
			{ "<leader>r", group = "rename & restart" },
			{ "<leader>s", group = "splits" },
			-- { "<leader>sn", group = "noice" },
			{ "<leader>t", group = "tabs & themes" },
			{ "<leader>u", group = "notifications" },
			{ "<leader>w", group = "workspace" },
			{ "<leader>x", group = "trouble" },
		})
	end,
}
