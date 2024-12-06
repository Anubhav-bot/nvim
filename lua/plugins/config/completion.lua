return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-buffer",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
        "onsails/lspkind.nvim",
    },


    config = function()

        local cmp = require("cmp")
        local cmp_buffer = require('cmp_buffer')
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local lspkind = require('lspkind')

        require("luasnip.loaders.from_vscode").lazy_load()
        cmp.setup({
            formatting = {
                format = lspkind.cmp_format({
                    mode = "symbol_text",
                    menu = ({
                        buffer = "[Buffer]",
                        nvim_lsp = "[LSP]",
                        luasnip = "[LuaSnip]",
                        nvim_lua = "[Lua]",
                        latex_symbols = "[Latex]",
                    })
                }),
            },
            window = {
                completion = cmp.config.window.bordered(),
                -- documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
            }),

            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },


            sources = cmp.config.sources({
                { name = 'nvim_lua' },
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'path' },
            },
                {
                    { name = 'buffer' },
                    option = {
                        keyword_length = 3,  -- no of keys that need to be pressed to trigger
                        keyword_pattern = [[\k\+]],
                        get_bufnrs = function()
                            local bufs = {}
                            local buf
                            local byte_size
                            -- return vim.api.nvim_list_bufs()
                            for _, win in ipairs(vim.api.nvim_list_wins()) do
                                buf = vim.api.nvim_win_get_buf(win)
                                byte_size = vim.api.nvim_buf_get_offset(buf, vim.api.nvim_buf_line_count(buf))
                                if byte_size < 1024 * 1024 then
                                    bufs[buf] = true
                                end
                            end

                            return vim.tbl_keys(bufs)
                        end,
                    }
                }),

            sorting = {
                comparators = {
                    function(...) return cmp_buffer:compare_locality(...) end,
                    -- The rest of your comparators...
                }
            },
        })

        -- `/` cmdline setup.
        cmp.setup.cmdline({ '/', '?' } ,{
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = 'buffer' }
            }
        })

        -- `:` cmdline setup.
        cmp.setup.cmdline(':', {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = 'path' }
            }, {
                    {
                        name = 'cmdline',
                        option = {
                            ignore_cmds = { 'Man', '!' }
                        }
                    }
                })
        })

    end
}
