return {
	"folke/which-key.nvim",
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
		wk.register({
			-- add group
			["<leader>"] = {
				a = { name = "+harpoon" },
				c = { name = "+code" },
				e = { name = "+file explorer" },
				f = { name = "+telescope" },
				h = { name = "+hunks" },
				l = { name = "+lazy & lazygit" },
				m = { name = "+format" },
				n = { name = "+search" },
				o = { name = "+obsidian" },
				r = { name = "+rename & restart" },
				s = { name = "+splits" },
				sn = { name = "+noice" },
				t = { name = "+tabs & themes" },
				u = { name = "+notifications" },
				w = { name = "+workspace" },
				x = { name = "+trouble" },
			},
		})
	end,
}
