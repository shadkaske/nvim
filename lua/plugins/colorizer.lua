return {
  {
    "norcalli/nvim-colorizer.lua",
    event = { "VeryLazy" },
    cmd = {
      "ColorizerAttachToBuffer",
      "ColorizerDetachFromBuffer",
      "ColorizerReloadAllBuffers",
      "ColorizerToggle",
    },
    keys = {
      { "<leader>bc", "<cmd>ColorizerToggle<cr>", desc = "Colorizer Toggle" },
    },
  },
}
