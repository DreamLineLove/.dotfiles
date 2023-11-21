local opt = vim.opt

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4 -- (prettier default is 2 though)
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
-- opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.incsearch = true

-- long running undo trees
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- appearance
opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.colorcolumn = "80"

opt.isfname:append("@-@")
opt.updatetime = 50
