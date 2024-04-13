return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
	    local harpoon = require("harpoon")
	    harpoon:setup();
	    -- REQUIRED

	    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end);
	    vim.keymap.set("n", "<leader>l", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end);

	    vim.keymap.set("n", "<C-j>", function() harpoon:list():select(1) end);
	    vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end);
	    vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end);
	    vim.keymap.set("n", "<C-;>", function() harpoon:list():select(4) end);

	    vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end);
	    vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end);
	    vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end);
	    vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end);
	    vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end);
	    vim.keymap.set("n", "<leader>h6", function() harpoon:list():select(6) end);
	    vim.keymap.set("n", "<leader>h7", function() harpoon:list():select(7) end);
	    vim.keymap.set("n", "<leader>h8", function() harpoon:list():select(8) end);
	    vim.keymap.set("n", "<leader>h9", function() harpoon:list():select(9) end);

	    -- Toggle previous & next buffers stored within Harpoon list

	    vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end);
	    vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end);
    end
}
