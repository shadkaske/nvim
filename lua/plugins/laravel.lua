return {
  {
    "adalessa/laravel.nvim",
    version = "*",
    dependencies = {
      { "tpope/vim-dotenv" },
      { "nvim-telescope/telescope.nvim" },
      { "MunifTanjim/nui.nvim" },
      { "kevinhwang91/promise-async" },
    },
    event = { "BufRead *.php" },
    cmd = { "Laravel" },
    keys = {
      { "<leader>la", ":Laravel artisan<cr>" },
      { "<leader>lr", ":Laravel routes<cr>" },
      { "<leader>lm", ":Laravel related<cr>" },
    },
    opts = {
      pickers = {
        enable = true,
        provider = "snacks",
      },
      lsp_server = "intelephense",
      features = {
        model_info = {
          enable = false,
        },
        route_info = {
          enable = false,
        },
      },
    },
    config = true,
  },
  {
    "ccaglak/larago.nvim",
    lazy = true,
    event = { "BufRead *.blade.php" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    cmd = {
      "GoBlade",
    },
    keys = {
      { "<leader>lg", "<cmd>GoBlade<cr>", desc = "Go To Blade..." },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "php",
        "html",
      },
    },
    init = function()
      local blade_parser = require("nvim-treesitter.parsers").get_parser_configs()
      blade_parser.blade = {
        install_info = {
          url = "https://github.com/EmranMR/tree-sitter-blade",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "blade",
      }
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "blade-formatter",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        blade = { "blade-formatter" },
      },
    },
  },
}
