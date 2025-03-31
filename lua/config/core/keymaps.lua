vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
keymap.set("n", "x", '"_x') -- delete without putting in register
keymap.set("i", "jk", "<Esc>")
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Search Highlights" })

-- numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>ss", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- Make spilts of equal size
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close Current Split" }) -- Make spilts of equal size

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
-- Tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<S-tab>", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
-- Buffers
keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap.set("n", "[b", "<cmd>bprev<cr>", { desc = "Previous Buffer" })
