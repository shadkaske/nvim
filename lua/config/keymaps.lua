-- Don't Override Leader
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Insert Mode Shortcuts
vim.keymap.set('i', '<A-e>', '<C-o>$', { silent = true })
vim.keymap.set('i', '<A-;>', '<C-o>A;<ESC>', { silent = true })
vim.keymap.set('i', '<A-,>', '<C-o>A,<ESC>', { silent = true })
vim.keymap.set('n', '<A-;>', 'A;<ESC>', { silent = true })
vim.keymap.set('n', '<A-,>', 'A,<ESC>', { silent = true })

-- Save with C-s
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save file' })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Visual Indent Lines
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- commenting
vim.keymap.set('n', 'gco', 'o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>', { desc = 'Add Comment Below' })
vim.keymap.set('n', 'gcO', 'O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>', { desc = 'Add Comment Above' })

-- Center view on jumps
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-f>', '<C-f>zz')
vim.keymap.set('n', '<C-b>', '<C-b>zz')
vim.keymap.set('n', '<C-o>', '<C-o>zz')
vim.keymap.set('n', '<C-i>', '<C-i>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- yank Prefix
vim.keymap.set({ 'n', 'v' }, '<leader>yo', '"_dP', { desc = 'Paste Over' })
vim.keymap.set({ 'n', 'v' }, '<leader>yp', '"+p', { desc = 'Paste System' })
vim.keymap.set({ 'n', 'v' }, '<leader>yy', '"+y', { desc = 'Yank to System' })
vim.keymap.set({ 'n', 'v' }, '<leader>yd', '"+d', { desc = 'Delete to System' })

-- b Prefix
vim.keymap.set({ 'n' }, '<leader>br', '<cmd>e %<cr>', { desc = 'Reload Buffer' })
vim.keymap.set({ 'n' }, '<leader>bn', '<cmd>bn<cr>', { desc = 'Next Buffer' })
vim.keymap.set({ 'n' }, '<leader>bp', '<cmd>bp<cr>', { desc = 'Prev Buffer' })
vim.keymap.set({ 'n' }, '<leader>bw', '<cmd>bd<cr>', { desc = ' Close Buffer and Window' })
-- buffers
vim.keymap.set('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
vim.keymap.set('n', '[b', '<cmd>bprevious<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = 'Next Buffer' })

-- Toggle Plugins / Reload
vim.keymap.set('n', '<leader>ur', function()
  local plugins = require('lazy').plugins()
  local plugin_names = {}
  for _, plugin in ipairs(plugins) do
    table.insert(plugin_names, plugin.name)
  end

  vim.ui.select(plugin_names, {
    title = 'Reload plugin',
  }, function(selected)
    require('lazy').reload({ plugins = { selected } })
  end)
end, { desc = 'Reload plugin' })
