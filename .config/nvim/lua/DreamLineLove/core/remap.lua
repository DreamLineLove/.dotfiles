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
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- When cycling (forwards or backwards) through search terms, cursor stays in the 
-- middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
-- watch https://www.youtube.com/watch?v=w7i4amO_zaE 26:33 seconds 
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- (leader y to copy into the system clipboard in both normal and visual modes)
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
