local vim = vim
local set_options = require('_utils').set_options

vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

set_options({
    -- systematic
    encoding = 'utf-8',
    fileencoding = 'utf-8',
    fileencodings = 'utf-8',
    backup = false, -- no .bak
    swapfile = false, -- no .swap
    undofile = true, -- use undo file
    updatetime = 300, -- time (in ms) to write to swap file 
    
    -- whitespaces
    expandtab = true, -- tabs using space
    tabstop = 2, -- tab stop
    softtabstop = 2, -- soft tab stop
    autoindent = true, -- auto indent for new line
    shiftwidth = 2, -- auto indent shift width

    -- window
    termguicolors = true, -- enable 256colors
    number = true, -- show line numbers
    relativenumber = true, -- display line numbers as relative numbers
    splitright = true, -- split to right
    splitbelow = true, -- split to below

    -- editing
    whichwrap = 'h,l,b,s,<,>,[,]', -- cursor is able to move from end of line to next line
    mouse = 'a', -- enable mouse under normal and visual mode
    clipboard = 'unnamedplus', -- use same clipboard between os and vim
    list = true, -- enable listchars
    listchars = 'tab:⋮⋮', -- set tab character

    -- autocomplete
    completeopt = 'menu,menuone,noselect'
})
