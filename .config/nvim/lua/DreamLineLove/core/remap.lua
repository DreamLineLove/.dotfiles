vim.g.mapleader = " "

local keymap = vim.keymap

-- explore (Netrw)
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- In visual mode, move highlighted blocks
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- In normal mode, take line below and append it to current line without moving 
-- cursor point
keymap.set("n", "J", "mzJ`z")

-- When half-page jumping, cursor stays in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
