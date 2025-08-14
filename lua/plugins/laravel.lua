return {
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
			{ "<leader>Lg", "<cmd>GoBlade<cr>", desc = "Go To Blade..." },
		},
	},
	{
		"adalessa/laravel.nvim",
		dependencies = {
			{ "tpope/vim-dotenv" },
			{ "MunifTanjim/nui.nvim" },
			{ "nvim-telescope/telescope.nvim" },
			{ "nvim-lua/plenary.nvim" },
			{ "kevinhwang91/promise-async" },
		},
		cmd = { "Laravel" },
		keys = {
			{ "<leader>La", ":Laravel artisan<cr>", desc = "Artisan" },
			{ "<leader>Lr", ":Laravel routes<cr>", desc = "Routes" },
			{ "<leader>Lm", ":Laravel related<cr>", desc = "Related" },
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
}
