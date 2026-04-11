return {
	"saghen/blink.indent",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		static = {
			enabled = true,
			char = "▎",
		},
		scope = {
			enabled = true,
			char = "▎",
		},
	},
}
