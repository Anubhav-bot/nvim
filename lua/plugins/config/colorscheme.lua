return {
    "navarasu/onedark.nvim",
    name = "onedark",
    priority = 1000,
    config = function()
        local onedark = require("onedark")
        onedark.setup {
            style = "cool",
            toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
            toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

        }
        onedark.load()
    end
}
