local opts = { noremap = true }

-- Shorten function name
local map = vim.api.nvim_set_keymap

-- Remap space as leader key
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- General
map('i', 'jk', '<Esc>', opts) -- set "jk" as "escape" key

-- Editing
map('n', 're', '<C-r>', opts) -- redo

map('v', '<', '<gv', opts) -- prevent exiting Visual mode when shifting indentation
map('v', '>', '>gv', opts)

-- Navigations
map('n', '<C-j>', '<C-W>j', opts) -- move between panes
map('n', '<C-k>', '<C-W>k', opts)
map('n', '<C-h>', '<C-W>h', opts)
map('n', '<C-l>', '<C-W>l', opts)

map('n', 'k', 'gk', opts) -- move vertically by visual line
map('v', 'k', 'gk', opts)
map('n', 'j', 'gj', opts)
map('v', 'j', 'gj', opts)

map('n', 'B', '^', opts) -- move to begining/end line
map('n', 'E', '$', opts)

map('n', '<S-l>', ':bnext<CR>', opts)
map('n', '<S-h>', ':bprevious<CR>', opts)

-- Tabs & Window
map('n', '<C-t>', ':tabnew<CR>', opts) -- open new tab

map('n', '<C-A-Down>', ':resize -2<CR>', opts) -- Resize splited window
map('n', '<C-A-Up>', ':resize +2<CR>', opts)
map('n', '<C-A-Right>', ':vertical resize -6<CR>', opts)
map('n', '<C-A-Left>', ':vertical resize +6<CR>', opts)
