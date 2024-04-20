return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local on_attach = function()
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
        end
        require("mason").setup()
        require("mason-lspconfig").setup {
            ensure_installed = { "lua_ls", "pyright" },
            handlers = {
                function (server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {
                        on_attach = on_attach
                    }
                end,

                ["lua_ls"] = function ()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        on_attach = on_attach,
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
