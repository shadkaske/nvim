return {
  "echasnovski/mini.indentscope",
  opts = {
    -- symbol = "╎",
    symbol = "▏",
    draw = {
      delay = 0,
      animation = require("mini.indentscope").gen_animation.none(),
    },
    options = { try_as_border = true },
  },
}
