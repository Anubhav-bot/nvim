return {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = function()
        local ls = require("luasnip")

        vim.keymap.set({"i", "s"}, "<C-K>", function()
            if ls.expand_or_jumpable() then
                ls.expand_or_jump()
            end
        end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-J>", function()
            if ls.jumpable(-1) then
                ls.jump(-1)
            end
        end, {silent = true})

        vim.keymap.set({"i", "s"}, "<C-E>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, {silent = true})

        --- Snippets

        require("core.snippets")
    end
}
