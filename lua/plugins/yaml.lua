return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    optional = true,
    opts = {
      formatters_by_ft = {
        yaml = { "yamlfix" },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "yamlfix",
      },
    },
  },
}
