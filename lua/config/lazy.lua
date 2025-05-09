local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "config.plugins" }, { import = "config.plugins.lsp" } }, {
	change_detection = {
		notify = false,
	},
	checker = {
		enabled = true,
		notify = false,
	},
})

vim.keymap.set("n", "<leader>ll", ":Lazy<cr>", { desc = "Pacakge manager" })
vim.keymap.set("n", "<leader>lm", ":Mason<cr>", { desc = "Mason" })
