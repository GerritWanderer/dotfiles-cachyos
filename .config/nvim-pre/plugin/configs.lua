local opt = vim.opt

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set Nerd Font support to true
vim.g.have_nerd_font = true

-- Line Numnbers
opt.number = true
opt.relativenumber = false

-- Enable Mouse
opt.mouse = 'a'

-- Enable indentation for line breaks
opt.breakindent = true

-- Enable undo history
opt.undofile = true

-- Case-insensitive search
opt.ignorecase = true
opt.smartcase = true

-- sign column on by default
opt.signcolumn = 'yes'

-- Configure new splits
opt.splitright = true
opt.splitbelow = true

--- Show which line your cursor is on
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
opt.scrolloff = 10

-- Ask for confirmation due to unsaved changes
opt.confirm = true

-- Enable true colors
opt.termguicolors = true 

-- Display whitespace characters in the editor.
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Disable swap files
opt.swapfile = false 

-- Rounded borders for windows
opt.winborder = "rounded"

-- Fetch colorscheme to tokyonight and enable it
vim.pack.add({"https://github.com/folke/tokyonight.nvim"})
vim.cmd.colorscheme "tokyonight"
