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

-- Greatest remap ever
-- watch https://www.youtube.com/watch?v=w7i4amO_zaE 26:33 seconds 
-- tldr: paste over highlighted word without copying it to current register
keymap.set("x", "<leader>p", [["_dP]])

-- Next greatest remap ever : asbjornHaland
-- (leader y to copy into the system clipboard in both normal and visual modes)
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

-- In either normal or visual mode, deletes into the void register
keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
-- keymap.set("i", "<C-c>", "<Esc>")

-- keymap.set("n", "Q", "<nop>")

-- Tmux-sessionizer
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick Fix navigation
--keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the word under cursor in the whole file with prompted word
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Change mode of current file to executable (chmod +x .)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
