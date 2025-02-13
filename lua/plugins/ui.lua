return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              return str:sub(1, 1)
            end,
          },
        },
        lualine_b = {
          {
            "branch",
            icon = "",
          },
        },
      },
    },
  },
}
