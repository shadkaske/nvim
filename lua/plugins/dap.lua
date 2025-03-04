return {
  {
    "mfussenegger/nvim-dap",
    recommended = true,
    desc = "Debugging support. Requires language specific adapters to be configured. (see lang extras)",

    dependencies = {
      "rcarriga/nvim-dap-ui",
      -- virtual text for the debugger
      {
        "theHamsta/nvim-dap-virtual-text",
        opts = {},
      },
    },

  -- stylua: ignore
  keys = {
    { "<C-F8>", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
    { "<F8>", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
    { "<F5>", function() require("dap").continue() end, desc = "Run/Continue" },
    { "<F9>", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
    { "<F11>", function() require("dap").step_into() end, desc = "Step Into" },
    { "<F10>", function() require("dap").step_over() end, desc = "Step Over" },
    { "<C-F5>", function() require("dap").terminate() end, desc = "Terminate" },
  },
  },
}
