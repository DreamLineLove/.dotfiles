vim.g.mapleader = " "

local keymap = vim.keymap -- to prevent having to write vim.keymap on every line

---------------------
-- General Keymaps
---------------------

-- Not sure whether I like this or not...
-- keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement
