return {
	{
		"mrjones2014/smart-splits.nvim",
		event = "VeryLazy",
		config = function()
			require("smart-splits").setup({})

			-- resizing splits
			vim.keymap.set("n", "<A-S-h>", require("smart-splits").resize_left)
			vim.keymap.set("n", "<A-S-j>", require("smart-splits").resize_down)
			vim.keymap.set("n", "<A-S-k>", require("smart-splits").resize_up)
			vim.keymap.set("n", "<A-S-l>", require("smart-splits").resize_right)
			-- moving between splits
			vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
			vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
			vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
			vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
			-- swapping buffers between windows
			vim.keymap.set("n", "<leader>bsh", require("smart-splits").swap_buf_left, { desc = "Swap Buffer Left" })
			vim.keymap.set("n", "<leader>bsj", require("smart-splits").swap_buf_down, { desc = "Swap Buffer Down" })
			vim.keymap.set("n", "<leader>bsk", require("smart-splits").swap_buf_up, { desc = "Swap Buffer Up" })
			vim.keymap.set("n", "<leader>bsl", require("smart-splits").swap_buf_right, { desc = "Swap Buffer Right" })
			-- terminal mode
			vim.keymap.set("t", "<C-h>", require("smart-splits").move_cursor_left)
			vim.keymap.set("t", "<C-j>", require("smart-splits").move_cursor_down)
			vim.keymap.set("t", "<C-k>", require("smart-splits").move_cursor_up)
			vim.keymap.set("t", "<C-l>", require("smart-splits").move_cursor_right)
		end,
	},
}
