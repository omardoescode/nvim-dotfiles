return {
	"xiyaowong/transparent.nvim",
	event = "VimEnter",
	config = function()
		require("transparent").setup({
			groups = { -- default groups
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			extra_groups = { -- additional groups for plugins
				"NeoTreeNormal", -- Neo-tree normal background
				"NeoTreeNormalNC", -- Neo-tree normal background for inactive windows
				-- Add other plugin-specific groups here if needed
			},
			exclude_groups = {}, -- groups you don't want to clear
		})
	end,
	keys = {
		{ "<leader>tt", "<cmd>TransparentToggle<cr>", desc = "Toggle Transparency" },
	},
}
