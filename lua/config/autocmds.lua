-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "BufEnter" }, { pattern = { "*" }, command = [[set formatoptions-=ro]] })
vim.api.nvim_create_autocmd({ "BufEnter" }, { pattern = { "*" }, command = [[setlocal formatoptions-=ro]] })

-- Automagically Trim Whitespace
vim.api.nvim_create_autocmd({ "BufWritePre" }, { pattern = { "*" }, command = [[%s/\s\+$//e]] })

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
