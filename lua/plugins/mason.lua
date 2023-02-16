return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
  opts = {
    ensure_installed = {
      "ansible-language-server",
      "ansible-lint",
      "blade-formatter",
      "css-lsp",
      "emmet-ls",
      "eslint-lsp",
      "flake8",
      "html-lsp",
      "intelephense",
      "json-lsp",
      "jsonlint",
      "lua-language-server",
      "markdownlint",
      "marksman",
      "php-debug-adapter",
      "prettier",
      "shellcheck",
      "shfmt",
      "sql-formatter",
      "sqls",
      "stylua",
      "tailwindcss-language-server",
      "typescript-language-server",
      "vue-language-server",
    },
  },
  ---@param opts MasonSettings | {ensure_installed: string[]}
  config = function(plugin, opts)
    require("mason").setup(opts)
    local mr = require("mason-registry")
    for _, tool in ipairs(opts.ensure_installed) do
      local p = mr.get_package(tool)
      if not p:is_installed() then
        p:install()
      end
    end
  end,
}
