--relative-number
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.clipboard="unnamedplus"

-- folds
vim.opt.foldmethod="marker"
vim.opt.foldmarker="{{{,}}}"

-- Set tabstop, shiftwidth and expandtab
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Enable smart indenting
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.breakindent = true

vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Preview substitutions live, as you type!
-- vim.opt.inccommand = 'split'

-- make codeium only activate manually
-- vim.g.codeium_manual = true
