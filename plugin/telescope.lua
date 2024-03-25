local builtin = require('telescope.builtin')

return {
    vim.keymap.set('n', "<leader>pf", builtin.find_files, {} );
    vim.keymap.set('n', "<leader>ps", builtin.live_grep, {} );
}
