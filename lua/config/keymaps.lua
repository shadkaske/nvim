-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("which-key").register({
  mode = { "n", "v" },
  ["<leader>d"] = { name = "+debug" },
})

-- Tmux Navigator
vim.keymap.set({ "n", "t" }, "<C-h>", "<cmd>NavigatorLeft<cr>", { desc = "Go to Left Window" })
vim.keymap.set({ "n", "t" }, "<C-j>", "<cmd>NavigatorDown<cr>", { desc = "Go to Lower Window" })
vim.keymap.set({ "n", "t" }, "<C-k>", "<cmd>NavigatorUp<cr>", { desc = "Go to Upper Window" })
vim.keymap.set({ "n", "t" }, "<C-l>", "<cmd>NavigatorRight<cr>", { desc = "Go to Right Window" })
