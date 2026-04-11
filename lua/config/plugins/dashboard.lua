return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
			"                                                     ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find file", "<cmd>FzfLua files<cr>"),
			dashboard.button("r", "  Recent files", "<cmd>FzfLua oldfiles<cr>"),
			dashboard.button("g", "  Grep text", "<cmd>FzfLua grep_project<cr>"),
			dashboard.button("s", "  Search & Replace", "<cmd>GrugFar<cr>"),
			dashboard.button("o", "  Obsidian Today", "<cmd>ObsidianToday<cr>"),
			dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<cr>"),
			dashboard.button("q", "  Quit", "<cmd>qa<cr>"),
		}

		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.buttons.opts.hl = "AlphaButtons"
		dashboard.section.footer.opts.hl = "AlphaFooter"

		dashboard.section.footer.val = function()
			local stats = require("lazy").stats()
			return "  " .. stats.loaded .. "/" .. stats.count .. " plugins loaded"
		end

		dashboard.config.layout = {
			{ type = "padding", val = vim.fn.max({ 2, vim.fn.floor(vim.fn.winheight(0) / 4) }) },
			dashboard.section.header,
			{ type = "padding", val = 2 },
			dashboard.section.buttons,
			{ type = "padding", val = 1 },
			dashboard.section.footer,
		}

		alpha.setup(dashboard.config)
	end,
}
