return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- make sure it loads first
  config = function()
    vim.cmd("colorscheme gruvbox")
  end,
}
