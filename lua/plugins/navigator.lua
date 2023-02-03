return {
  "numToStr/Navigator.nvim",
  lazy = true,
  cmd = {
    "NavigatorLeft",
    "NavigatorDown",
    "NavigatorUp",
    "NavigatorRight",
  },
  config = function()
    require("Navigator").setup({})
  end,
}
