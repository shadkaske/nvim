-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

require("which-key").register({
  mode = { "n", "v" },
  ["<leader>d"] = { name = "+debug" },
  ["gy"] = { name = "Clipboard" },
})

-- Copy Paste Keymaps
vim.keymap.set({ "n", "v" }, "gyo", '"_dP', { desc = "Paste Over" })
vim.keymap.set({ "n", "v" }, "gyp", '"+p', { desc = "Paste System" })
vim.keymap.set({ "n", "v" }, "gyy", '"+y', { desc = "Yank to System" })
vim.keymap.set({ "n", "v" }, "gyd", '"+d', { desc = "Delete to System" })

-- Tmux Navigator
vim.keymap.set({ "n", "t", "v" }, "<C-h>", "<cmd>NavigatorLeft<cr>", { desc = "Go to Left Window" })
vim.keymap.set({ "n", "t", "v" }, "<C-j>", "<cmd>NavigatorDown<cr>", { desc = "Go to Lower Window" })
vim.keymap.set({ "n", "t", "v" }, "<C-k>", "<cmd>NavigatorUp<cr>", { desc = "Go to Upper Window" })
vim.keymap.set({ "n", "t", "v" }, "<C-l>", "<cmd>NavigatorRight<cr>", { desc = "Go to Right Window" })

-- buffers
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Previous" })

vim.keymap.set("n", "<leader>.", "<cmd>nohlsearch<cr>", { desc = "No Highlight Search" })
vim.keymap.set(
  "n",
  "<leader>uh",
  [[ (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n" <BAR> redraw<CR>]],
  { desc = "Toggle Highlight Search", silent = true, expr = true }
)
