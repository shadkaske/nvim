return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  init = function()
    require('which-key').setup({
      preset = 'modern',
    })

    require('which-key').add({
      -- { "<leader>l", group = "Laravel", icon = { icon = "", color = "red" } },
      -- { "<leader>t", group = "Ansible", icon = { icon = "", color = "blue" } },
      { '<leader>b', group = 'Buffers' },
      { '<leader>bs', group = 'Swap' },
      { '<leader>c', group = 'Code' },
      { '<leader>d', group = 'Debug' },
      { '<leader>f', group = 'Find' },
      { '<leader>g', group = 'Git' },
      { '<leader>L', group = 'Laravel', icon = { icon = '', color = 'red' } },
      { '<leader>s', group = 'Search' },
      { '<leader>t', group = 'Ansible', icon = { icon = '󱂚', color = 'blue' } },
      { '<leader>u', group = 'UI' },
      { '<leader>x', group = 'Trouble', icon = '' },
      { '<leader>y', group = 'Clipboard', icon = '' },
      {
        '<leader>w',
        group = 'Window',
        expand = function()
          return require('which-key.extras').expand.buf()
        end,
      },
    })
  end,
}
