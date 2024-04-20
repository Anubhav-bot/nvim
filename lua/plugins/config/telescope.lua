return {
	'nvim-telescope/telescope.nvim', tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function ()
		local builtin = require('telescope.builtin')
		vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope: Find Files"})
		vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Telescope: Live Grep "})
	end
}
