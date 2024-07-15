vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap
keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down by visual Line", expr = true, silent = true })
keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up by visual line", expr = true, silent = true })

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- -- Navigate through the quickfix and location list
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<CR>", "o<ESC>", { noremap = true, silent = true, desc = "Insert blank line below" })
-- TODO: This won't work, probably because the terminal doesn't recognize Shift + Enter correctly
keymap.set("n", "<S-CR>", "O<ESC>", { noremap = true, silent = true, desc = "Insert blank line above" })

keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlights" })

keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace word under the cursor" }
)

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- TODO: Check if I will use tabs at all
-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set(
	"n",
	"<leader>io",
	"i\
// Copyright Open Logistics Foundation\
//\
// Licensed under the Open Logistics Foundation License 1.3.\
// For details on the licensing terms, see the LICENSE file.\
// SPDX-License-Identifier: OLFL-1.3\
//\
<ESC>",
	{ desc = "Insert OLFL-1.3 License Header" }
)
