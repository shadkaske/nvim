return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    optional = true,
    opts = {
      options = {
        ft_parsers = {
          json = "json",
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
      },
    },
  },
}
