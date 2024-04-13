--relative-number
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.clipboard="unnamedplus"

-- folds
vim.opt.foldmethod="marker"
vim.opt.foldmarker="{{{,}}}"

-- Set tabstop, shiftwidth and expandtab
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Enable smart indenting
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.breakindent = true

-- make codeium only activate manually
-- vim.g.codeium_manual = true
