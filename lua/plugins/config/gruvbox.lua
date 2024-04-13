
return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000 ,
    config = function ()
        vim.o.termguicolors = true
        vim.cmd [[colorscheme gruvbox ]]
    end
}
