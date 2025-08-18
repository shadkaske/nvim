return { -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>bf',
      function()
        require('conform').format({ async = true, lsp_format = 'fallback' })
      end,
      mode = 'n',
      desc = 'Format buffer',
    },
    {
      '<leader>cf',
      function()
        require('conform').format({ async = true, lsp_format = 'fallback' })
      end,
      mode = 'n',
      desc = 'Format buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 500,
          lsp_format = 'fallback',
        }
      end
    end,
    formatters_by_ft = {
      ['markdown'] = { 'prettier', 'markdownlint-cli2', 'markdown-toc' },
      ['markdown.mdx'] = { 'prettier', 'markdownlint-cli2', 'markdown-toc' },
      ['yaml.ansible'] = { 'ansible-lint' },
      blade = { 'blade-formatter' },
      lua = { 'stylua' },
      php = { 'pint' },
      python = { 'isort', 'black' },
      sh = { 'shfmt' },
      sql = { 'sqlfluff' },
      yaml = { 'yamlfmt' },
    },
  },
}
