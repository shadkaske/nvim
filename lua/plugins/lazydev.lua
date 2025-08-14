return {
	"folke/lazydev.nvim",
	ft = "lua", -- only load on lua files
	opts = {
		library = {
			-- Library paths can be absolute
			-- "~/projects/my-awesome-lib",
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
			{ path = "snacks.nvim", words = { "Snacks" } },
			-- Load the wezterm types when the `wezterm` module is required
			-- TODO: Add Wezterm Types Plugin
			-- Needs `justinsgithub/wezterm-types` to be installed
			-- { path = "wezterm-types", mods = { "wezterm" } },
		},
		enabled = function(root_dir)
			return vim.g.lazydev_enabled == nil and true or vim.g.lazydev_enabled
		end,
		enabled = function(root_dir)
			return not vim.uv.fs_stat(root_dir .. "/.luarc.json")
		end,
	},
}
