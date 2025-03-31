return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local theme = require("alpha.themes.startify")

		-- Send config to alpha
		alpha.setup(theme.opts)
	end,
}
