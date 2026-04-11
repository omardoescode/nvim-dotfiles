return {
	"jakemason/ouroboros",
	ft = { "c", "cpp" },
	config = function()
		require("ouroboros").setup({})
		vim.keymap.set("n", "<a-o>", "<cmd>Ouroboros<cr>")
	end,
}
