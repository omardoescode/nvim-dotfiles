return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = "markdown",
	---@module 'render-markdown'
	---@type render.md.UserConfig
	opts = {
		overrides = {
			buftype = {
				nofile = { enabled = false },
			},
		},
	},
}
