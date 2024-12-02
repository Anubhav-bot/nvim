return {
    'nvim-lualine/lualine.nvim',

    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function ()

        -- local function codeium_status()
        --     return [[{…}%3{codeium#GetStatusString()}]]
        -- end

        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'tokyonight'
            },

            sections = {
               lualine_b = {
                    'branch',
                    -- codeium_status,
                    'diff',
                    'diagnostics',
               }
            }
        }
    end
}
