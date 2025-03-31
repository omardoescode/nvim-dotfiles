return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local theme = require("alpha.themes.startify")

		-- Set header
		math.randomseed(os.time())
		local ascii_arts = require("config.headers")

		-- Send config to alpha
		alpha.setup(theme.opts)
	end,
}
