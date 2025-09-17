return {
	"jakemason/ouroboros",
	config = function()
		require("ouroboros").setup({})
		vim.keymap.set("n", "<a-o>", "<cmd>Ouroboros<cr>")
	end,
}
