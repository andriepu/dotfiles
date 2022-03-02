local options = {
  backup = false,                          -- creates a backup file
  clipboard = 'unnamedplus',               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  hidden = true,
  completeopt = { 'menuone', 'noselect' }, -- mostly just for cmp
  fileencoding = 'utf-8',                  -- the encoding written to a file
  ignorecase = true,                       -- ignore case in search patterns
  mouse = 'a',                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 3,                         -- set number column width to 2 {default 4}
  signcolumn = 'number',                   -- out signs into the number column
  list = true,                             -- enable listchars
  listchars = 'tab:ﲖ ',                    -- set tab character
  wrap = false,                            -- display lines as one long line
  whichwrap = 'h,l,b,s,<,>,[,]',           -- cursor is able to move from end of line to next line
  scrolloff = 8,
  sidescrolloff = 8,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
