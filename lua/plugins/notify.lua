return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Delete all Notifications",
    },
  },
  opts = {
    timeout = 1500,
    top_down = false,
    render = "compact",
    max_height = function()
      return math.floor(vim.o.lines * 0.6)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.6)
    end,
  },
}
