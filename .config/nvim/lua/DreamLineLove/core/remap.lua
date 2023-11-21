vim.g.mapleader = " "

local keymap = vim.keymap

-- explore (Netrw)
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
