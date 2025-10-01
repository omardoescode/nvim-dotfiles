vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
keymap.set("n", "x", '"_x') -- delete without putting in register
keymap.set("i", "jk", "<Esc>")
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Search Highlights" })

-- window management
keymap.set("n", "<leader>\\", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>=", "<C-w>=", { desc = "Make splits equal size" }) -- Make spilts of equal size
keymap.set("n", "<C-x>", "<cmd>close<CR>", { desc = "Close Current Split" }) -- Make spilts of equal size

-- Move window
keymap.set("n", "<leader>sh", "<C-w>H", { desc = "Move split left" })
keymap.set("n", "<leader>sk", "<C-w>K", { desc = "Move split up" })
keymap.set("n", "<leader>sj", "<C-w>J", { desc = "Move split down" })
keymap.set("n", "<leader>sl", "<C-w>L", { desc = "Move split left" })

-- Resize window
keymap.set("n", "<a-h>", "<C-w><", { desc = "Resize window to smaller size horizontally" })
keymap.set("n", "<a-l>", "<C-w>>", { desc = "Resize window to larger size horizontally" })
keymap.set("n", "<a-k>", "<C-w>+", { desc = "Resize window to smaller size vertically" })
keymap.set("n", "<a-j>", "<C-w>-", { desc = "Resize window to smaller size vertically" })

-- Buffers
keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap.set("n", "<S-h>", "<cmd>bprev<cr>", { desc = "Previous Buffer" })

vim.keymap.set("n", "<c-w>", ":bd<CR>", { desc = "Close buffer" })
