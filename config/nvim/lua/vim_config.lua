-- https://neovim.io/doc/user/options/

-- from Kun Chen
local o = vim.opt
vim.g.mapleader = " " -- space is the leader key
o.expandtab = true -- spaces not tabs
o.shiftwidth = 2 -- 2 spaces per indent level
o.number = true -- absolute number on the cursor line. relative elsewhere
o.relativenumber = true -- relative line numbers for fast jumps
o.ignorecase = true -- search is casze-insensitive by default
o.smartcase = true -- case-sensitive only if I type a capital
o.clipboard = "unnamedplus" -- share the system clipboard
--o.scrolloff = 16 -- keep cursor away from the screen edge
o.undofile = true -- persistent undo across sessions

-- From Primeagan https://github.com/ThePrimeagen/init.lua/commit/33eee9ad0c035a92137d99dae06a2396be4c892e
vim.opt.guicursor = "" -- Configures the cursor

--vim.opt.nu = true
--vim.opt.relativenumber = true
vim.opt.tabstop = 2 -- Defines the column multiple used to display the Horizontal Tab character ?
vim.opt.softtabstop = 2 -- In Insert mode, pressing the <Tab> key will move the cursor to the next soft tab stop, instead of inserting a literal tab.
--vim.opt.shiftwidth = 2 -- Number of columns that make up one level of (auto)indentation.
vim.opt.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>

vim.opt.smartindent = true -- Do smart autoindenting when starting a new line.

vim.opt.wrap = false -- lines longer than the width of the window will wrap

--vim.opt.swapfile = false
vim.opt.backup = false -- Make a backup before overwriting a file.
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undo"
--vim.opt.undofile = true

vim.opt.hlsearch = false -- When there is a previous search pattern, highlight all its matches.
vim.opt.incsearch = true -- Hilight searchs as you type them

-- vim.opt.termguicolors = true    -- Enables 24-bit RGB color in the TUI.

vim.opt.scrolloff = 8 -- Minimal number of screen lines to keep above and below the cursor.
vim.opt.signcolumn = "yes" -- When and how to draw the signcolumn ?
vim.opt.isfname:append("@-@") -- The characters specified by this option are included in file names and path names.

vim.opt.updatetime = 50 -- If this many milliseconds nothing is typed the swap file will be written to disk

-- vim.opt.colorcolumn = "80"      -- Useful to align text.

-- vim.g.mapleader = " "        -- Already have, but uses '
