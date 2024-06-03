return {
	"goolord/alpha-nvim",
	dependencies = {
		"BlakeJC94/alpha-nvim-fortune",
	},
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		local fortune = require("alpha.fortune")

		-- Set header
		math.randomseed(os.time())
		local ascii_arts = require("omar.headers")
		dashboard.section.header.val = ascii_arts[math.random(#ascii_arts)]
		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼  Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC /", "  Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("SPC wr", "󰁯  Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "  Quit NVIM", "<cmd>qa<CR>"),
		}

		-- set footer
		dashboard.section.footer.val = fortune({})
		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
