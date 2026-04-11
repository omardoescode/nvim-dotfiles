return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = true,
		config = function()
			local bg = "#011628"
			local bg_dark = "#011423"
			local bg_highlight = "#143652"
			local bg_search = "#0A64AC"
			local bg_visual = "#275378"
			local fg = "#CBE0F0"
			local fg_dark = "#B4D0E9"
			local fg_gutter = "#627E97"
			local border = "#547998"

			require("tokyonight").setup({
				style = "moon",
				on_colors = function(colors)
					colors.bg = bg
					colors.bg_dark = bg_dark
					colors.bg_float = bg_dark
					colors.bg_highlight = bg_highlight
					colors.bg_popup = bg_dark
					colors.bg_search = bg_search
					colors.bg_sidebar = bg_dark
					colors.bg_statusline = bg_dark
					colors.bg_visual = bg_visual
					colors.border = border
					colors.fg = fg
					colors.fg_dark = fg_dark
					colors.fg_float = fg
					colors.fg_gutter = fg_gutter
					colors.fg_sidebar = fg_dark
				end,
			})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = true,
		config = function()
			require("catppuccin").setup({
				flavour = "auto",
				background = { light = "latte", dark = "mocha" },
				transparent_background = vim.g.transparent,
				show_end_of_buffer = false,
				term_colors = true,
				dim_inactive = { enabled = false, shade = "dark", percentage = 0.15 },
				styles = {
					comments = { "italic" },
					conditionals = { "italic" },
				},
				default_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = false,
					mini = { enabled = true, indentscope_color = "" },
				},
			})
		end,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		config = function()
			require("solarized-osaka").setup({
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					sidebars = "dark",
					floats = "dark",
				},
				sidebars = { "qf", "help" },
				day_brightness = 0.3,
			})
		end,
	},
	{
		"sainnhe/sonokai",
		lazy = true,
		config = function()
			vim.g.sonokai_transparent_background = vim.g.transparent
			vim.g.sonokai_enable_italic = 1
			vim.g.sonokai_style = "andromeda"
		end,
	},
	{ "Shatur/neovim-ayu", name = "ayu", lazy = true },
	{ "rebelot/kanagawa.nvim", lazy = true },
	{ "marko-cerovac/material.nvim", lazy = true },
	{ "ellisonleao/gruvbox.nvim", lazy = true },
	{
		"AstroNvim/astrotheme",
		lazy = true,
		config = function()
			require("astrotheme").setup({
				palette = "astrodark",
				background = { light = "astrolight", dark = "astrodark" },
				style = {
					transparent = false,
					inactive = true,
					float = true,
					neotree = true,
					border = true,
					title_invert = true,
					italic_comments = true,
					simple_syntax_colors = true,
				},
				termguicolors = true,
				terminal_color = true,
				plugin_default = "auto",
				plugins = { ["bufferline.nvim"] = false },
			})
		end,
	},
	{ "datsfilipe/vesper.nvim", lazy = true },
	{ "HUAHUAI23/nvim-quietlight", lazy = true },
}
