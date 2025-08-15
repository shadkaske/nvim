return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    {
      'tpope/vim-dadbod',
      lazy = true,
      cmd = 'DB',
    },
    {
      'kristijanhusak/vim-dadbod-completion',
      ft = { 'sql', 'mysql', 'plsql' },
      lazy = true,
    },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    local data_path = vim.fn.stdpath('data')

    vim.g.db_ui_auto_execute_table_helpers = true
    vim.g.db_ui_save_location = data_path .. '/dadbod_ui'
    vim.g.db_ui_show_database_icon = true
    vim.g.db_ui_tmp_query_location = data_path .. '/dadbod_ui/tmp'
    vim.g.db_ui_use_nerd_fonts = true
    vim.g.db_ui_use_nvim_notify = true
    vim.g.db_ui_execute_on_save = false
    vim.g.dbs = {
      { name = 'printapp-dev', url = 'mysql://laravel@localhost:3380/printapp' },
      -- { name = "staging", url = "Replace with your database connection URL." },
    }
  end,
  keys = {
    { '<leader>D', '<cmd>DBUIToggle<CR>', desc = 'Toggle DBUI' },
  },
}
