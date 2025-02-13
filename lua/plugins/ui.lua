return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        globalstatus = false,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      inactive_sections = {
        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },
        lualine_x = { "location" },
      },
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
        lualine_y = {
          { "progress" },
        },
        lualine_z = {
          { "location" },
        },
      },
    },
  },
}
