local opt = vim.opt -- to prevent having to write vim.opt on every line

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs && indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search 
opt.ignorecase = true
opt.smartcase = true
-- opt.hlsearch = false
opt.incsearch = true

-- cursor
opt.guicursor = ""

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.scrolloff = 8

-- backspace 
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- window splitting 
opt.splitright = true
opt.splitbelow = true
