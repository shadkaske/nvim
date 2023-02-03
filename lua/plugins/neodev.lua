return {
  "folke/neodev.nvim",
  opts = {
    experimental = { pathStrict = true },
    library = {
      plugins = { "nvim-dap-ui" },
      types = true,
    },
  },
}
