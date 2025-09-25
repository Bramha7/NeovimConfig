-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.g.mapleader = " "
-- local keymap = vim.keymap
-- local opts = { noremap = true, silent = true }
--
-- keymap.set("n", "+", "<C-a>")
-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
--
-- keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
--
-- -- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
--
-- -- window management
-- keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
--
-- -- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- -- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- -- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- -- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- -- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
-- keymap.set("n", "<leader>tl", "<cmd>tablast<CR>", { desc = "Go to Last Tab" })
-- keymap.set("n", "<leader>to", "<cmd>tabonly<CR>", { desc = "Close Other Tabs" })
-- keymap.set("n", "<leader>tf", "<cmd>tabfirst<CR>", { desc = "Go to First Tab" })
-- keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
-- keymap.set("n", "<leader>t]", "<cmd>tabnext<CR>", { desc = "Go to Next Tab" })
-- keymap.set("n", "<leader>td", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
-- keymap.set("n", "<leader>t[", "<cmd>tabprevious<CR>", { desc = "Go to Previous Tab" })
--
-- -- keymap setting for multiline comment
-- keymap.set("v", "<leader>gb", ":Commentary<CR>")
-- keymap.set("n", "<leader>gb", ":Commentary<CR>")
-- -- ctrl+enter mode to next line
-- keymap.set("i", "<C-j>", "<Esc>o", { noremap = true, silent = true })
-- keymap.set("i", "<C-k>", "<Esc>O", { noremap = true, silent = true })
-- keymap.set("i", "<C-l>", "<Esc>wa", { noremap = true, silent = true })
-- keymap.set("n", "<leader>db", ":DBUIToggle<CR>", { noremap = true, silent = true })
-- keymap.set("i", "<C-a>", "<Esc>ggVG", { noremap = true, silent = true })
-- -- rest.vim
--
-- -- Keymaps for rest.nvim
-- -- <leader> is usually "\" or ",", but you can check with :echo mapleader
-- keymap.set("n", "<leader>xr", "<cmd>Rest run<cr>", { desc = "Run HTTP request" })
-- keymap.set("n", "<leader>xp", "<cmd>Rest preview<cr>", { desc = "Preview cURL command" })
-- keymap.set("n", "<leader>xl", "<cmd>Rest last<cr>", { desc = "Re-run last request" })
-- -- for vs code
-- if vim.g.vscode then
--   vim.keymap.set("n", "<C-b>", [[:call VSCodeNotify('workbench.view.explorer')<CR>]])
-- end

local M = {}

function M.setup()
  local keymap = vim.keymap
  local opts = { noremap = true, silent = true }

  -- Leader key
  vim.g.mapleader = " "

  -- Normal mode mappings

  -- Increment/decrement numbers
  keymap.set("n", "+", "<C-a>", opts)
  keymap.set("n", "<leader>+", "<C-a>", vim.tbl_extend("force", opts, { desc = "Increment number" }))
  keymap.set("n", "<leader>-", "<C-x>", vim.tbl_extend("force", opts, { desc = "Decrement number" }))

  -- Clear search highlights
  keymap.set("n", "<leader>nh", ":nohl<CR>", vim.tbl_extend("force", opts, { desc = "Clear search highlights" }))

  -- Window management
  keymap.set("n", "<leader>sv", "<C-w>v", vim.tbl_extend("force", opts, { desc = "Split window vertically" }))
  keymap.set("n", "<leader>sh", "<C-w>s", vim.tbl_extend("force", opts, { desc = "Split window horizontally" }))
  keymap.set("n", "<leader>se", "<C-w>=", vim.tbl_extend("force", opts, { desc = "Make splits equal size" }))
  keymap.set("n", "<leader>sx", "<cmd>close<CR>", vim.tbl_extend("force", opts, { desc = "Close current split" }))

  -- Navigate splits easily
  keymap.set("n", "<C-h>", "<C-w>h", vim.tbl_extend("force", opts, { desc = "Move to left window" }))
  keymap.set("n", "<C-j>", "<C-w>j", vim.tbl_extend("force", opts, { desc = "Move to below window" }))
  keymap.set("n", "<C-k>", "<C-w>k", vim.tbl_extend("force", opts, { desc = "Move to above window" }))
  keymap.set("n", "<C-l>", "<C-w>l", vim.tbl_extend("force", opts, { desc = "Move to right window" }))

  -- Tab management
  -- Open current buffer in a new tab
  keymap.set(
    "n",
    "<leader>tn",
    "<cmd>tabedit %<CR>",
    vim.tbl_extend("force", opts, { desc = "Open current buffer in new tab" })
  )

  -- Close other tabs except current one
  keymap.set("n", "<leader>to", "<cmd>tabonly<CR>", vim.tbl_extend("force", opts, { desc = "Close other tabs" }))

  -- Go to last tab
  keymap.set("n", "<leader>tl", "<cmd>tablast<CR>", vim.tbl_extend("force", opts, { desc = "Go to last tab" }))

  -- Go to first tab
  keymap.set("n", "<leader>tf", "<cmd>tabfirst<CR>", vim.tbl_extend("force", opts, { desc = "Go to first tab" }))

  -- Next and previous tab
  keymap.set("n", "<leader>t]", "<cmd>tabnext<CR>", vim.tbl_extend("force", opts, { desc = "Go to next tab" }))
  keymap.set("n", "<leader>t[", "<cmd>tabprevious<CR>", vim.tbl_extend("force", opts, { desc = "Go to previous tab" }))

  -- Close current tab
  keymap.set("n", "<leader>td", "<cmd>tabclose<CR>", vim.tbl_extend("force", opts, { desc = "Close current tab" }))

  -- Plugin toggles and commands
  keymap.set("n", "<leader>db", ":DBUIToggle<CR>", opts)
  keymap.set("v", "<leader>gb", ":Commentary<CR>", vim.tbl_extend("force", opts, { desc = "Comment selection" }))
  keymap.set("n", "<leader>gb", ":Commentary<CR>", vim.tbl_extend("force", opts, { desc = "Comment line" }))

  -- rest.nvim HTTP requests
  keymap.set("n", "<leader>xr", "<cmd>Rest run<CR>", vim.tbl_extend("force", opts, { desc = "Run HTTP request" }))
  keymap.set(
    "n",
    "<leader>xp",
    "<cmd>Rest preview<CR>",
    vim.tbl_extend("force", opts, { desc = "Preview cURL command" })
  )
  keymap.set("n", "<leader>xl", "<cmd>Rest last<CR>", vim.tbl_extend("force", opts, { desc = "Re-run last request" }))

  -- Insert mode mappings
  keymap.set("i", "jk", "<ESC>", vim.tbl_extend("force", opts, { desc = "Exit insert mode with jk" }))
  keymap.set("i", "<C-j>", "<Esc>o", opts)
  keymap.set("i", "<C-k>", "<Esc>O", opts)
  keymap.set("i", "<C-l>", "<Esc>wa", opts)
  keymap.set("i", "<C-a>", "<Esc>ggVG", opts)

  -- VSCode integration (optional)
  if vim.g.vscode then
    vim.keymap.set("n", "<C-b>", [[:call VSCodeNotify('workbench.view.explorer')<CR>]], opts)
  end
end

return M
