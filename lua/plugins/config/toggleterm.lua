return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        size = 15,
        open_mapping = [[<c-\>]],
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = '1',
        start_in_insert = true,
        persist_size = 'true',
        direction = 'horizontal',
        -- on_create = function(term)
        --     term:send("pfetch")
        -- end
    }
}
