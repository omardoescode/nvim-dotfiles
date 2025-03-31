return {
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		priority = 1000, -- make sure to load this before all the other start plugins
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
				-- transparent = vim.g.transparent,
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
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "auto", -- latte, frappe, macchiato, mocha
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},
				-- transparent_background = vim.g.transparent, -- disables setting the background color.
				show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
				term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
				dim_inactive = {
					enabled = false, -- dims the background color of inactive window
					shade = "dark",
					percentage = 0.15, -- percentage of the shade to apply to the inactive window
				},
				no_italic = false, -- Force no italic
				no_bold = false, -- Force no bold
				no_underline = false, -- Force no underline
				styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
					comments = { "italic" }, -- Change the style of comments
					conditionals = { "italic" },
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
					operators = {},
					-- miscs = {}, -- Uncomment to turn off hard-coded styles
				},
				color_overrides = {},
				custom_highlights = {},
				default_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
				},
			})

			-- setup must be called before loading
			-- vim.cmd.colorscheme("catppuccin")
		end,
	},

	{
		"craftzdog/solarized-osaka.nvim",
		priority = 1000,
		config = function()
			require("solarized-osaka").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- transparent = vim.g.transparent, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
				styles = {
					-- Style to be applied to different syntax groups
					-- Value is any valid attr-list value for `:help nvim_set_hl`
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},

				sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
				day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
				hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
				dim_inactive = false, -- dims inactive windows
				lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

				--- You can override specific color groups to use other groups or a hex color
				--- function will be called with a ColorScheme table
				---@param colors ColorScheme
				on_colors = function(colors) end,

				--- You can override specific highlights to use other groups or a hex color
				--- function will be called with a Highlights and ColorScheme table
				---@param highlights Highlights
				---@param colors ColorScheme
				on_highlights = function(highlights, colors) end,
			})
		end,
	},
	{
		"sainnhe/sonokai",
		priority = 1000,
		config = function()
			-- vim.g.sonokai_transparent_background = vim.g.transparent
			vim.g.sonokai_enable_italic = 1
			vim.g.sonokai_style = "andromeda"
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
	},
	{
		"Shatur/neovim-ayu",
		name = "ayu",
		priority = 1000,
	},
	"rebelot/kanagawa.nvim",
	"marko-cerovac/material.nvim",
	"ellisonleao/gruvbox.nvim",
	"akinsho/horizon.nvim",
	{
		"AstroNvim/astrotheme",
		config = function()
			require("astrotheme").setup({
				palette = "astrodark", -- String of the default palette to use when calling `:colorscheme astrotheme`
				background = { -- :h background, palettes to use when using the core vim background colors
					light = "astrolight",
					dark = "astrodark",
				},

				style = {
					transparent = false, -- Bool value, toggles transparency.
					inactive = true, -- Bool value, toggles inactive window color.
					float = true, -- Bool value, toggles floating windows background colors.
					neotree = true, -- Bool value, toggles neo-trees background color.
					border = true, -- Bool value, toggles borders.
					title_invert = true, -- Bool value, swaps text and background colors.
					italic_comments = true, -- Bool value, toggles italic comments.
					simple_syntax_colors = true, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
				},

				termguicolors = true, -- Bool value, toggles if termguicolors are set by AstroTheme.

				terminal_color = true, -- Bool value, toggles if terminal_colors are set by AstroTheme.

				plugin_default = "auto", -- Sets how all plugins will be loaded
				-- "auto": Uses lazy / packer enabled plugins to load highlights.
				-- true: Enables all plugins highlights.
				-- false: Disables all plugins.

				plugins = { -- Allows for individual plugin overrides using plugin name and value from above.
					["bufferline.nvim"] = false,
				},

				palettes = {
					global = { -- Globally accessible palettes, theme palettes take priority.
						my_grey = "#ebebeb",
						my_color = "#ffffff",
					},
					astrodark = { -- Extend or modify astrodarks palette colors
						ui = {
							red = "#800010", -- Overrides astrodarks red UI color
							accent = "#CC83E3", -- Changes the accent color of astrodark.
						},
						syntax = {
							cyan = "#800010", -- Overrides astrodarks cyan syntax color
							comments = "#CC83E3", -- Overrides astrodarks comment color.
						},
						my_color = "#000000", -- Overrides global.my_color
					},
				},

				highlights = {
					global = { -- Add or modify hl groups globally, theme specific hl groups take priority.
						modify_hl_groups = function(hl, c)
							hl.PluginColor4 = { fg = c.my_grey, bg = c.none }
						end,
						["@String"] = { fg = "#ff00ff", bg = "NONE" },
					},
					astrodark = {
						-- first parameter is the highlight table and the second parameter is the color palette table
						modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
							hl.Comment.fg = c.my_color
							hl.Comment.italic = true
						end,
						["@String"] = { fg = "#ff00ff", bg = "NONE" },
					},
				},
			})
		end,
	},
}
