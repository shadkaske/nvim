-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Smartly opens either git_files or find_files, depending on whether the working directory is
-- contained in a Git repo.
local _, builtin = pcall(require, "telescope.builtin")
local function find_project_files(opts)
  opts = opts or {}
  local ok = pcall(builtin.git_files, opts)

  if not ok then
    builtin.find_files(opts)
  end
end

local default_options = { silent = true, noremap = true }

vim.keymap.set({ "n", "v" }, "<leader>l", "")
require("which-key").register({
  mode = { "n", "v" },
  ["<leader>d"] = { name = "Debug" },
  ["gy"] = { name = "Clipboard" },
  ["<leader>l"] = { name = "Lsp" },
  ["<leader>y"] = { name = "Clipboard" },
})

-- Control p for file finder
vim.keymap.set({ "n", "v" }, "<C-p>", function()
  find_project_files({ previewer = false })
end, { desc = "Find Files" })

-- Search snippets
vim.keymap.set({ "n", "v" }, "<leader>lN", function()
  require("telescope").extensions.luasnip.luasnip({})
end, { desc = "Snippets" })

-- LSP Keymaps
vim.keymap.set({ "n", "v" }, "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Code Action" })
vim.keymap.set(
  { "n", "v" },
  "<leader>ld",
  "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>",
  { desc = "Buffer Diagnostics" }
)
vim.keymap.set({ "n", "v" }, "<leader>lw", "<cmd>Telescope diagnostics<cr>", { desc = "Diagnostics" })
vim.keymap.set({ "n", "v" }, "<leader>lf", "<cmd>lua require('lvim.lsp.utils').format()<cr>", { desc = "Format" })
vim.keymap.set({ "n", "v" }, "<leader>li", "<cmd>LspInfo<cr>", { desc = "Info" })
vim.keymap.set({ "n", "v" }, "<leader>lI", "<cmd>Mason<cr>", { desc = "Mason Info" })
vim.keymap.set({ "n", "v" }, "<leader>ln", "<cmd>lua vim.diagnostic.goto_next()<cr>", { desc = "Next Diagnostic" })
vim.keymap.set({ "n", "v" }, "<leader>lp", "<cmd>lua vim.diagnostic.goto_prev()<cr>", { desc = "Prev Diagnostic" })
vim.keymap.set({ "n", "v" }, "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", { desc = "CodeLens Action" })
vim.keymap.set({ "n", "v" }, "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<cr>", { desc = "Quickfix" })
vim.keymap.set({ "n", "v" }, "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Rename" })
vim.keymap.set({ "n", "v" }, "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Document Symbols" })
vim.keymap.set(
  { "n", "v" },
  "<leader>lS",
  "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
  { desc = "Workspace Symbols" }
)
vim.keymap.set({ "n", "v" }, "<leader>le", "<cmd>Telescope quickfix<cr>", { desc = "Telescope Quickfix" })

-- Git Keymaps
vim.keymap.set(
  { "n", "v" },
  "<leader>gn",
  "<cmd>lua require 'gitsigns'.next_hunk({navigation_message = false})<cr>",
  { desc = "Next Hunk" }
)
vim.keymap.set(
  { "n", "v" },
  "<leader>gp",
  "<cmd>lua require 'gitsigns'.prev_hunk({navigation_message = false})<cr>",
  { desc = "Prev Hunk" }
)
vim.keymap.set({ "n", "v" }, "<leader>gP", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", { desc = "Preview Hunk" })
vim.keymap.set({ "n", "v" }, "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", { desc = "Reset Hunk" })
vim.keymap.set({ "n", "v" }, "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", { desc = "Reset Buffer" })
vim.keymap.set({ "n", "v" }, "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", { desc = "Stage Hunk" })
vim.keymap.set(
  { "n", "v" },
  "<leader>gu",
  "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
  { desc = "Undo Stage Hunk" }
)
vim.keymap.set({ "n", "v" }, "<leader>go", "<cmd>Telescope git_status<cr>", { desc = "Open changed file" })
vim.keymap.set({ "n", "v" }, "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Checkout branch" })
vim.keymap.set(
  { "n", "v" },
  "<leader>gC",
  "<cmd>Telescope git_bcommits<cr>",
  { desc = "Checkout commit(for current file)" }
)
vim.keymap.set({ "n", "v" }, "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", { desc = "Git Diff" })

-- Clipboard Keymaps
vim.keymap.set({ "n", "v" }, "gyo", '"_dP', { desc = "Paste Over" })
vim.keymap.set({ "n", "v" }, "gyp", '"+p', { desc = "Paste System" })
vim.keymap.set({ "n", "v" }, "gyy", '"+y', { desc = "Yank to System" })
vim.keymap.set({ "n", "v" }, "gyd", '"+d', { desc = "Delete to System" })
vim.keymap.set({ "n", "v" }, "<leader>yo", '"_dP', { desc = "Paste Over" })
vim.keymap.set({ "n", "v" }, "<leader>yp", '"+p', { desc = "Paste System" })
vim.keymap.set({ "n", "v" }, "<leader>yy", '"+y', { desc = "Yank to System" })
vim.keymap.set({ "n", "v" }, "<leader>yd", '"+d', { desc = "Delete to System" })
vim.keymap.set({ "n", "v" }, "<leader>ys", "<cmd>Telescope neoclip<cr>", { desc = "Search Clipboard History" })

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

-- Control S To Save
vim.keymap.set({ "i", "v", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Insert mode shortcuts
vim.keymap.set("i", "<C-e>", "<C-o>$", default_options)
vim.keymap.set("i", ";;", "<C-o>A;", default_options)
vim.keymap.set("n", ";;", "A;<ESC>", default_options)
