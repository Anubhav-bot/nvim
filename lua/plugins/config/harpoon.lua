return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
	    local harpoon = require("harpoon")
	    harpoon:setup();
	    -- REQUIRED

	    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon: add buffer" });
	    vim.keymap.set("n", "<leader>l", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon: list buffers" });
	    vim.keymap.set("n", "<C-j>", function() harpoon:list():select(1) end, { desc = "Harpoon: Open buffer 1" });
	    vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end, { desc = "Harpoon: Open buffer 2" });
	    vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end, { desc = "Harpoon: Open buffer 3" });
	    vim.keymap.set("n", "<C-;>", function() harpoon:list():select(4) end, { desc = "Harpoon: Open buffer 4" });

	    vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Harpoon: Open buffer 1" });
	    vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "Harpoon: Open buffer 2" });
	    vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "Harpoon: Open buffer 3" });
	    vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "Harpoon: Open buffer 4" });
	    vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end, { desc = "Harpoon: Open buffer 5" });
	    vim.keymap.set("n", "<leader>h6", function() harpoon:list():select(6) end, { desc = "Harpoon: Open buffer 6" });
	    vim.keymap.set("n", "<leader>h7", function() harpoon:list():select(7) end, { desc = "Harpoon: Open buffer 7" });
	    vim.keymap.set("n", "<leader>h8", function() harpoon:list():select(8) end, { desc = "Harpoon: Open buffer 8" });
	    vim.keymap.set("n", "<leader>h9", function() harpoon:list():select(9) end, { desc = "Harpoon: Open buffer 9" });

	    -- Toggle previous & next buffers stored within Harpoon list

	    vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc = "Harpoon: Prev buffer" });
	    vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc = "Harpoon: Next buffer" });
    end
}
