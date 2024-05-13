return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        {
            "j-hui/fidget.nvim",
            opts = {
                --options
            },
        },
    },
    config = function()

        require("mason").setup()

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

        local util = require("lspconfig.util")
        require("lspconfig")["gdscript"].setup {
            name = "godot",
            cmd = function ()
                local connected = vim.lsp.rpc.connect('172.20.240.1', '6005')
                if connected then
                    print("gdscript connected")
                else
                    print("not connected")
                end
            end,
            -- cmd = { "gdscript-language-server", "--stdio" },

            filetypes = { 'gd', 'gdscript', 'gdscript3' },
            root_dir = util.root_pattern('project.godot', '.git'),
            capabilities = capabilities,

        }

        require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "pyright", "clangd", "bashls" },
            handlers = {
                function (server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        capabilities = capabilities,
                    }
                end,

                ["lua_ls"] = function ()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" }
                                }
                            }
                        }
                    }
                end,
            }
        }
    end
}
