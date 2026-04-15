return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	keys = {
		{
			"<leader>ca",
			"<cmd>Lspsaga code_action<cr>",
			desc = "Show code actions",
		},
		{
			"<leader>gt",
			"<cmd>Lspsaga peek_definition<cr>",
			desc = "Peek Definition",
		},
		{
			"[d",
			"<cmd>Lspsaga diagnostic_jump_next<cr>",
			desc = "Next Diagnostic",
		},
		{
			"<a-d>",
			"<cmd>Lspsaga show_line_diagnostics<cr>",
			desc = "Show Line Diagnostic",
		},
		{
			"<a-D>",
			"<cmd>Lspsaga show_buf_diagnostics<cr>",
			desc = "Show Buffer Diagnostic",
		},
		{
			"gf",
			"<cmd>Lspsaga finder<cr>",
			desc = "Lspsaga Finder",
		},
		{
			"gi",
			"<cmd>Lspsaga finder imp<cr>",
			desc = "Lspsaga Finder Implementation",
		},
		{
			"gd",
			"<cmd>Lspsaga goto_definition<cr>",
			desc = "Go to definition",
		},
		{
			"<leader>rn",
			"<cmd>Lspsaga rename<cr>",
			desc = "Smart Rename",
		},
		{
			"<leader>k",
			"<cmd>Lspsaga hover_doc<cr>",
			desc = "Show documentation for what is under cursor",
		},
		{ "<C-\\>", "<cmd>Lspsaga term_toggle<cr>", desc = "float terminal" },
	},
	config = function()
		require("lspsaga").setup({
			rename = {
				auto_save = true,
			},
			symbol_in_winbar = {
				enable = true,
				separator = " › ",
			},
		})

		local saga_groups = {
			"SagaWinbar",
			"SagaWinbarSep",
			"SagaWinbarFileName",
			"SagaWinbarFolderName",
			"SagaWinbarFolder",
			"WinBar",
			"WinBarNC",
		}
		local function clear_saga_bg()
			for _, group in ipairs(saga_groups) do
				local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group })
				if ok and next(hl) then
					hl.bg = nil
					vim.api.nvim_set_hl(0, group, hl)
				end
			end
		end
		clear_saga_bg()
		vim.api.nvim_create_autocmd("ColorScheme", { callback = clear_saga_bg })
	end,
}
