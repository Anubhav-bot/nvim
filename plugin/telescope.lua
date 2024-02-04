local builtin = require('telescope.builtin')

return {
    vim.keymap.set('n', "<leader>pf", builtin.find_files, {} );
}



