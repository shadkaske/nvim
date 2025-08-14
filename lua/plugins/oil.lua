return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	dependencies = {
		{ "nvim-tree/nvim-web-devicons", opts = {} },
	},
	lazy = false,
	keys = {
		{ "-", "<cmd>Oil<CR>", mode = "n", desc = "Open Oil" },
		-- { '<leader>e', '<cmd>lua require("oil").toggle_float()<CR>', mode = 'n', desc = 'Toggle Oil Float' },
	},
}
