return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		enabled = function()
			return vim.g.enable_auto_pairs
		end,
	},
}
