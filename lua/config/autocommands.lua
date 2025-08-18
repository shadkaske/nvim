-- Highlight Yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Set Btxml Files to xml filetype
vim.api.nvim_create_autocmd(
  { 'BufWritePre', 'BufNewFile' },
  { pattern = { '*.btxml' }, command = [[set filetype=xml]] }
)

-- Set up blade filetype
vim.api.nvim_create_autocmd('BufEnter', {
  desc = 'Set filetype for Blade files',
  pattern = '*.blade.php',
  callback = function()
    vim.bo.filetype = 'blade'
  end,
})

-- Automagically Trim Whitespace
vim.api.nvim_create_autocmd({ 'BufWritePre' }, { pattern = { '*' }, command = [[%s/\s\+$//e]] })
