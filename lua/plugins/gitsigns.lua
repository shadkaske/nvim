return {
  'lewis6991/gitsigns.nvim',
  init = function()
    require('which-key').add({
      { '<leader>gh', group = 'Hunks' },
    })
  end,
  opts = {
    -- attach_to_untracked = true,
    on_attach = function(buffer)
      local gitsigns = require('gitsigns')

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end

      map('n', ']h', function()
        if vim.wo.diff then
          vim.cmd.normal({ ']c', bang = true })
        else
          ---@diagnostic disable-next-line
          gitsigns.nav_hunk('next')
        end
      end, 'Next Hunk')
      map('n', '[h', function()
        if vim.wo.diff then
          vim.cmd.normal({ '[c', bang = true })
        else
          ---@diagnostic disable-next-line
          gitsigns.nav_hunk('prev')
        end
      end, 'Prev Hunk')
      map('n', ']H', function()
        ---@diagnostic disable-next-line
        gitsigns.nav_hunk('last')
      end, 'Last Hunk')
      map('n', '[H', function()
        ---@diagnostic disable-next-line
        gitsigns.nav_hunk('first')
      end, 'First Hunk')
      map({ 'n', 'v' }, '<leader>ghs', ':Gitsigns stage_hunk<CR>', 'Stage Hunk')
      map({ 'n', 'v' }, '<leader>ghr', ':Gitsigns reset_hunk<CR>', 'Reset Hunk')
      map('n', '<leader>ghS', gitsigns.stage_buffer, 'Stage Buffer')
      ---@diagnostic disable-next-line
      map('n', '<leader>ghu', gitsigns.undo_stage_hunk, 'Undo Stage Hunk')
      map('n', '<leader>ghR', gitsigns.reset_buffer, 'Reset Buffer')
      map('n', '<leader>ghp', gitsigns.preview_hunk_inline, 'Preview Hunk Inline')
      map('n', '<leader>ghb', function()
        gitsigns.blame_line({ full = true })
      end, 'Blame Line')
      map('n', '<leader>ghB', function()
        gitsigns.blame()
      end, 'Blame Buffer')
      map('n', '<leader>ghd', gitsigns.diffthis, 'Diff This')
      map('n', '<leader>ghD', function()
        ---@diagnostic disable-next-line
        gitsigns.diffthis('~')
      end, 'Diff This ~')
      map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', 'GitSigns Select Hunk')
    end,
  },
  event = 'VeryLazy',
  cmd = { 'GitSigns' },
  --     end,
}
