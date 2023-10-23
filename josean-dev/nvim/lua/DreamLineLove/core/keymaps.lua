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

----------------------
-- Plugin Keybinds
----------------------

-- open nvim-tree directory
keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<cr>")


