--leader key
vim.g.mapleader = " "


-- normal mode keymaps 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<leader>c", "<cmd>noh<CR>")
vim.keymap.set("n", "*", "*N")
vim.keymap.set("n", "#", "#N")
vim.keymap.set("n", "<leader>to",  "<cmd>term<CR>")
vim.keymap.set("n", "<F9>", "<cmd>!make all run<CR>")

-- terminal mode keymaps
vim.keymap.set("t", "jk", "<C-\\><C-n>")

-- insert mode keymaps 
vim.keymap.set("i", "jk", "<Esc>")


-- visual mode keymaps 
vim.keymap.set("x", "<leader>p", "\"_dP")
