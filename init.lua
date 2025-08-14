-- Globals for toggling items
vim.g.enable_auto_pairs = true

-- Global Options
require("config.global")

-- Vim Options
require("config.options")

-- Lazy.nvim
require("config.lazy")

-- Autocommands
require("config.autocommands")

-- Vim Keymaps
require("config.keymaps")

-- Require other config files
require("config.colorscheme")
