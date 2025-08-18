return {
  'folke/todo-comments.nvim',
  event = { 'VeryLazy' },
  cmd = {
    'TodoTrouble',
    'TodoLocList',
    'TodoQuickFix',
  },
  config = function()
    require('todo-comments').setup({
      search = {
        command = 'rg',
        args = {
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--glob=!lib/',
          '--glob=!.git',
          '--glob=!vendor',
          '--glob=!node_modules',
          '--glob=!public/',
        },
      },
    })
  end,
  keys = {
    {
      ']t',
      function()
        require('todo-comments').jump_next()
      end,
      desc = 'Next Todo Comment',
    },
    {
      '[t',
      function()
        require('todo-comments').jump_prev()
      end,
      desc = 'Previous Todo Comment',
    },
    { '<leader>xt', '<cmd>Trouble todo toggle<cr>', desc = 'Todo (Trouble)' },
    {
      '<leader>xT',
      '<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>',
      desc = 'Todo/Fix/Fixme (Trouble)',
    },
    { '<leader>st', '<cmd>TodoTelescope<cr>', desc = 'Todo' },
    { '<leader>sT', '<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>', desc = 'Todo/Fix/Fixme' },
  },
}
