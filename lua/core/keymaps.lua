-- *NOTE* 
--
-- This file contains generic keybindings only
--
-- Any plugin specific keybindings can be found in
-- nvim/lua/plugins/config/<plugin_name>.lua

--leader key
vim.g.mapleader = " "


-- insert mode keymaps {{{
vim.keymap.set("i", "jk", "<Esc>", { desc = "Enter normal mode" })
vim.keymap.set("i", "<C-s>", "<cmd>w<CR>", { desc = "Save buffer to file" })
-- }}}

-- normal mode keymaps  {{{

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>pv", ":NvimTreeFindFileToggle<CR>") -> Inside nerd-tree.lua
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<leader>c", "<cmd>noh<CR>", { desc = "Clear highlihgts" })

vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")

vim.keymap.set("n", "<leader>*", "*N", { desc = "Highlight all words matching the one under the cursor" })
vim.keymap.set("n", "<leader>#", "#N", { desc = "Highlight all words matching the one under the cursor backwards" })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save buffer to file" })


-- }}}

-- Substitue stuff {{{
-- simple [s]ubstitute [o]one word
vim.keymap.set("n", "<leader>so", "*Ncgn", { desc = "Search for and substitute word under the cursor" })
vim.keymap.set("v", "<leader>so", "*Ncgn")

-- [s]ubstitute in [l]ine
vim.keymap.set("n", "<leader>sl", ":s/\\(<c-r>=expand('<cword>')<cr>\\)/", { desc = "Substitute command with cword as the search term" })
vim.keymap.set("n", "<leader>sL", ":s/\\(<c-r>=expand('<cWORD>')<cr>\\)/", { desc = "Substitute command with cWORD as the search term" })

-- [s]ubstitute word in [f]ile
vim.keymap.set("n", "<leader>sf", ":%s/\\(<c-r>=expand('<cword>')<cr>\\)/", { desc = "Substitute command with cword as the search term [whole file]" })
vim.keymap.set("v", "<leader>sf", ":s/\\(<c-r>=expand('<cword>')<cr>\\)/")

-- [s]ubstitute WORD in [F]ile
vim.keymap.set("n", "<leader>sF", ":%s/\\(\\V<c-r>=expand('<cWORD>')<cr>\\)/", { desc = "Substitute command with cWORD as the search term [whole file]" })
vim.keymap.set("v", "<leader>sF", ":s/\\(\\V<c-r>=expand('<cWORD>')<cr>\\)/")

---------------------- [END] Substitue stuff -------------------------------------}}}

-- Miscellaneous stuff {{{
vim.keymap.set("n", "<leader>to",  "<cmd>term<CR>", { desc = "open terminal" })
vim.keymap.set("n", "<F9>", "<cmd>!make all run<CR>", { desc = "run 'make all run' from shell" })

-- vim.keymap.set("n", "<leader>ch", vim.fn["codeium#Chat"])

-- terminal mode keymaps
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Enter Normal mode" })


-- visual mode keymaps 
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Put and preserve register contents" })
-- }}}
