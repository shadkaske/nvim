-- Set highlight on search
vim.o.hlsearch = false

-- Set Command Height to 0
vim.o.cmdheight = 0

-- Set Cursor Line on
vim.o.cursorline = true

vim.o.hidden = true

-- Set Scrolloff
vim.o.scrolloff = 4

-- Make line numbers default
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'
vim.o.mousemoveevent = true

-- No Wrap
vim.o.wrap = false

-- Default tab settings
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Split options
vim.o.splitbelow = true
vim.o.splitright = true

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 500
vim.o.timeout = true
vim.o.timeoutlen = 500

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Set win borders
vim.o.winborder = 'rounded'

vim.o.termguicolors = true
