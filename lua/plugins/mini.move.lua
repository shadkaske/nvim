return {
  'echasnovski/mini.move',
  version = '*',
  event = 'VeryLazy',
  opt = {
    mappings = {
      -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
      left = '<C-S-h>',
      right = '<C-S-l>',
      down = '<C-S-j>',
      up = '<C-S-k>',

      -- Move current line in Normal mode
      line_left = '<C-S-h>',
      line_right = '<C-S-l>',
      line_down = '<C-S-j>',
      line_up = '<C-S-k>',
    },
  },
}
