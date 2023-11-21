local opt = vim.opt

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
-- opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
-- opt.shiftwidth = 2 -- 2 spaces for indent width
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true
