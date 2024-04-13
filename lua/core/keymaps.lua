-- *NOTE* 
--
-- This file contains generic keybindings only
--
-- Any plugin specific keybindings can be found in
-- nvim/lua/plugins/config/<plugin_name>.lua

--leader key
vim.g.mapleader = " "


-- insert mode keymaps {{{
vim.keymap.set("i", "jk", "<Esc>")
-- }}}

-- normal mode keymaps  {{{
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<leader>c", "<cmd>noh<CR>")

vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")

vim.keymap.set("n", "<leader>*", "*N")
vim.keymap.set("n", "<leader>#", "#N")
-- }}}

-- Substitue stuff {{{
-- simple [s]ubstitute [o]one word
vim.keymap.set("n", "<leader>so", "*Ncgn")
vim.keymap.set("v", "<leader>so", "*Ncgn")

-- [s]ubstitute in [l]ine
vim.keymap.set("n", "<leader>sl", ":s/\\(<c-r>=expand('<cword>')<cr>\\)/")
vim.keymap.set("n", "<leader>sL", ":s/\\(<c-r>=expand('<cWORD>')<cr>\\)/")

-- [s]ubstitute word in [f]ile
vim.keymap.set("n", "<leader>sf", ":%s/\\(<c-r>=expand('<cword>')<cr>\\)/")
vim.keymap.set("v", "<leader>sf", ":s/\\(<c-r>=expand('<cword>')<cr>\\)/")

-- [s]ubstitute WORD in [F]ile
vim.keymap.set("n", "<leader>sF", ":%s/\\(\\V<c-r>=expand('<cWORD>')<cr>\\)/")
vim.keymap.set("v", "<leader>sF", ":s/\\(\\V<c-r>=expand('<cWORD>')<cr>\\)/")

---------------------- [END] Substitue stuff -------------------------------------}}}

-- Miscellaneous stuff {{{
vim.keymap.set("n", "<leader>to",  "<cmd>term<CR>")
vim.keymap.set("n", "<F9>", "<cmd>!make all run<CR>")

-- vim.keymap.set("n", "<leader>ch", vim.fn["codeium#Chat"])

-- terminal mode keymaps
vim.keymap.set("t", "jk", "<C-\\><C-n>")


-- visual mode keymaps 
vim.keymap.set("x", "<leader>p", "\"_dP")
-- }}}
