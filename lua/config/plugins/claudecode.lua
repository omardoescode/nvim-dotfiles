return {
	"coder/claudecode.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = {
		"ClaudeCode",
		"ClaudeCodeFocus",
		"ClaudeCodeSend",
		"ClaudeCodeAdd",
		"ClaudeCodeDiffAccept",
		"ClaudeCodeDiffDeny",
		"ClaudeCodeSelectModel",
	},
	opts = {
		terminal = { provider = "auto" }, -- uses snacks if present, else native split
	},
	keys = {
		{ "<leader>jc", "<cmd>ClaudeCode<cr>", desc = "Claude: toggle" },
		{ "<leader>jf", "<cmd>ClaudeCodeFocus<cr>", desc = "Claude: focus" },
		{ "<leader>jr", "<cmd>ClaudeCode --resume<cr>", desc = "Claude: resume" },
		{ "<leader>jC", "<cmd>ClaudeCode --continue<cr>", desc = "Claude: continue" },
		{ "<leader>jm", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Claude: select model" },
		{ "<leader>jb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Claude: add current buffer" },
		{ "<leader>js", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Claude: send selection" },
		{ "<leader>ja", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Claude: accept diff" },
		{ "<leader>jd", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Claude: deny diff" },
	},
}
