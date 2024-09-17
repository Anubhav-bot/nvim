vim.g.tmux_navigator_no_mappings = 1

return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<leader>wh", "<cmd>TmuxNavigateLeft<cr>" },
    { "<leader>wj", "<cmd>TmuxNavigateDown<cr>" },
    { "<leader>wk", "<cmd>TmuxNavigateUp<cr>" },
    { "<leader>wl", "<cmd>TmuxNavigateRight<cr>" },
    { "<leader>w\\", "<cmd>TmuxNavigatePrevious<cr>" },
  },
}
