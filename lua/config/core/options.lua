local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.breakindent = true
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true
-- opt.background = "light"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- sharing clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- transparent effect
vim.g.transparent = true

opt.conceallevel = 2 -- conceal level

opt.scrolloff = 5 -- scrolloff option

-- remove status bar
opt.laststatus = 0
