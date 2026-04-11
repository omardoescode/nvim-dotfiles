-- highlights all instances of the word under cursor automatically
return {
	"echasnovski/mini.cursorword",
	event = { "BufReadPre", "BufNewFile" },
	opts = {},
}
