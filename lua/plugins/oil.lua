return {
  'stevearc/oil.nvim',
  opts = {
    win_options = {
      signcolumn = 'yes:2',
    },
    keymaps = {
      ['q'] = { 'actions.close', mode = 'n' },
    },
  },
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', opts = {} },
  },
  lazy = false,
  keys = {
    { '-', '<cmd>Oil<CR>', mode = 'n', desc = 'Open Oil' },
    -- { '-', '<cmd>lua require("oil").toggle_float()<CR>', mode = 'n', desc = 'Toggle Oil Float' },
  },
}
