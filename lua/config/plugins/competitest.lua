return {
	"xeluxee/competitest.nvim",
	dependencies = "MunifTanjim/nui.nvim",
	config = function()
		require("competitest").setup({
			received_problems_path = "$(HOME)/problem-solving/problems/$(JUDGE)/$(CONTEST)/$(PROBLEM).$(FEXT)",
			received_contests_directory = "$(HOME)/problem-solving/problems/$(JUDGE)/$(CONTEST)",
			received_contests_problems_path = "$(PROBLEM)/main.$(FEXT)",
			template_file = {
				cpp = "~/problem-solving/templates/init.cpp",
			},
			received_contests_prompt_extension = false,
			received_contests_prompt_directory = false,
			open_received_contests = true,
			open_received_problems = true,
			evaluate_template_modifiers = true,
		})
	end,
	keys = {
		{
			"<leader>cr",
			"<cmd>CompetiTest run<cr>",
			desc = "Run problem testcases",
		},
		{
			"<leader>cgr",
			"<cmd>CompetiTest receive problem<cr>",
			desc = "Receive a problem",
		},
		{
			"<leader>cgc",
			"<cmd>CompetiTest receive contest<cr>",
			desc = "Receive a contest",
		},
	},
}
