function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "folke/tokyonight.nvim",
        name = 'tokyonight',
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = "dark",
                    floats = "dark",
                }
            })
        end
    },

    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     name = "gruvbox",
    --     lazy = false,
    --     priority = 1000 ,
    --     config = function ()
    --         vim.o.termguicolors = true
    --     end
    -- },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                disable_background = true
            })
            ColorMyPencils()
        end

    }
}
