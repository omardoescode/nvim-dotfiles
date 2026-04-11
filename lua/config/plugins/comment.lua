return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring", -- for JSX & TSX Files
	},
	config = function()
		-- import comment plugin safely
		local comment = require("Comment")

		local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

		local hook = ts_context_commentstring.create_pre_hook()

		comment.setup({
			pre_hook = function(...)
				local ok, result = pcall(hook, ...)
				if ok then
					return result
				end
			end,
		})
	end,
}
