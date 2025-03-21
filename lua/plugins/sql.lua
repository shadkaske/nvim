return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    optional = true,
    opts = {
      formatters_by_ft = {
        sql = { "sqlfluff" },
      },
      formatters = {
        sqlfluff = {
          args = { "format", "--dialect=ansi", "-" },
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "sqlfluff",
      },
    },
  },
}
