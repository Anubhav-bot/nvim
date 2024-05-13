return {
    {
        "tpope/vim-fugitive",
        config = function ()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Fugitive: Git status" })
        end
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function ()
            require("gitsigns").setup()
        end
    }

}