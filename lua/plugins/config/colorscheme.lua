return {
    "navarasu/onedark.nvim",
    name = "onedark",
    priority = 1000,
    config = function()
        local onedark = require("onedark")
        local transparency = true
        local opts = {
            style = "cool",
            toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
            toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
            transparent = transparency,
            lualine = {
                transparent = transparency,
            },

        }

        function ToggleTransparency()
            transparency = not transparency
            opts.transparent = transparency
            opts.lualine.transparent = transparency
            onedark.setup(opts)
            onedark.load()
        end

        vim.api.nvim_set_keymap("n", "<leader>tt", ":lua ToggleTransparency()<CR>", { noremap = true, silent = true })

        onedark.setup(opts)
        onedark.load()
    end
}
