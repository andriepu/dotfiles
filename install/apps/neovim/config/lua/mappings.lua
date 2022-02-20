vim.g.mapleader = ','
local map = vim.api.nvim_set_keymap

-- common
map('i', 'jk', '<Esc>', {noremap=true}) -- set "jk" as "escape" key

map('n', '<Leader>ev', ':vsp $MYVIMRC<CR>', {noremap=true}) -- edit/load init.lua
map('n', '<Leader>sv', ':source $MYVIMRC<CR>', {noremap=true})

-- moving
map('n', 'k', 'gk', {noremap=true}) -- move vertically by visual line
map('v', 'k', 'gk', {noremap=true})
map('n', 'j', 'gj', {noremap=true})
map('v', 'j', 'gj', {noremap=true})

map('n', 'B', '^', {noremap=true}) -- move to begining/end line
map('n', 'E', '$', {noremap=true})

-- editing
map('v', '<', '<gv', {noremap=true}) -- prevent exiting Visual mode when shifting indentation
map('v', '>', '>gv', {noremap=true})

map('i', '∆', '<Esc>:m .+1<CR>==gi', {noremap=true}) -- move line down
map('v', '∆', ':m \'>+1<CR>gv=gv', {noremap=true})
map('n', '∆', ':m .+1<CR>==', {noremap=true})

map('i', '˚', '<Esc>:m .-2<CR>==gi', {noremap=true}) -- move line up
map('v', '˚', ':m \'<-2<CR>gv=gv', {noremap=true})
map('n', '˚', ':m .-2<CR>==', {noremap=true})

map('n', 're', '<C-r>', {noremap=true}) -- redo

-- window
map('n', '<Leader>tn', ':tabnew<CR>', {noremap=true}) -- open new tab
map('n', '<Leader>to', ':tabonly<CR>', {noremap=true}) -- close all other tabs

map('n', '<C-j>', '<C-W>j', {noremap=true}) -- move between panes
map('n', '<C-k>', '<C-W>k', {noremap=true})
map('n', '<C-h>', '<C-W>h', {noremap=true})
map('n', '<C-l>', '<C-W>l', {noremap=true})
map('t', '<C-h>', '<C-\\><C-N><C-w>h', {noremap=true})
map('t', '<C-j>', '<C-\\><C-N><C-w>j', {noremap=true})
map('t', '<C-k>', '<C-\\><C-N><C-w>k', {noremap=true})
map('t', '<C-l>', '<C-\\><C-N><C-w>l', {noremap=true})

-- visual
map('n', '<Leader><Space>', ':nohlsearch<CR>', {noremap=true}) -- hide search highlight
