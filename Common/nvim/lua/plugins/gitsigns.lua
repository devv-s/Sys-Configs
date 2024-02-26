return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()
    
    local shortcut = vim.keymap
    shortcut.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", { silent = true })
    shortcut.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { silent = true })
  end
}
