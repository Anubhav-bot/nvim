return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")
        require 'nvim-treesitter.install'.compilers = { 'gcc', 'clang' }

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "vue", "css" },
            ignore_install = {"latex"},
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
