vim.cmd 'packadd packer.nvim'

require'packer'.startup(function (use)
  use {'wbthomason/packer.nvim'}

  -- theme
  use {'EdenEast/nightfox.nvim',
    config = function() require('nightfox').load('nightfox') end
  }

  -- file
  use 'tpope/vim-vinegar' -- File browser
  -- use {'mhinz/vim-startify', -- startup screen
  --   config = function()
  --     vim.api.nvim_set_keymap('n', '<Leader>qq', ':Startify<CR>', {noremap=true })
  --   end
  -- }

  -- use {'nvim-telescope/telescope.nvim', -- fuzzy finder
  --   requires = {
  --     'kyazdani42/nvim-web-devicons', -- icons
  --     'nvim-lua/plenary.nvim' -- lua utility functions
  --   },
  --   config = function()
  --     require 'packs.telescope'

  --     vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', {noremap=true})
  --     vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', {noremap=true})
  --     vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', {noremap=true})
  --     vim.api.nvim_set_keymap('n', '<Leader>fr', ':Telescope resume<CR>', {noremap=true})
  --   end
  -- }

  -- -- edit

  -- use {'MunifTanjim/prettier.nvim',
  --   config = function()
  --     require("prettier").setup{}
  --   end
  -- }

  -- use {'svermeulen/vim-cutlass',
  --   config = function()
  --     vim.api.nvim_set_keymap('n', 'm', 'd', {noremap=true})
  --     vim.api.nvim_set_keymap('x', 'm', 'd', {noremap=true})

  --     vim.api.nvim_set_keymap('n', 'mm', 'dd', {noremap=true})
  --     vim.api.nvim_set_keymap('n', 'M', 'D', {noremap=true})
  --   end
  -- }

  -- use {'svermeulen/vim-yoink',
  --   config = function()
  --     vim.g.yoinkIncludeDeleteOperations = 1
      
  --     vim.api.nvim_set_keymap('n', '<C-n>', '<plug>(YoinkPostPasteSwapBack)', {})
  --     vim.api.nvim_set_keymap('n', '<C-p>', '<plug>(YoinkPostPasteSwapForward)', {})

  --     vim.api.nvim_set_keymap('n', 'p', '<plug>(YoinkPaste_p)', {})
  --     vim.api.nvim_set_keymap('n', 'P', '<plug>(YoinkPaste_P)', {})

  --     vim.api.nvim_set_keymap('n', 'gp', '<plug>(YoinkPaste_gp)', {})
  --     vim.api.nvim_set_keymap('n', 'gP', '<plug>(YoinkPaste_gP)', {})
  --   end
  -- }

  -- use 'tpope/vim-commentary' -- comment
  -- use 'tpope/vim-surround' -- easier brackets editing

  -- use {'steelsojka/pears.nvim', -- auto bracket pairs
  --   cofig = function()
  --     require 'packs.pears'
  --   end
  -- }

  -- use {'hrsh7th/nvim-cmp', -- autocomplete popup
  --   requires = {
  --     'neovim/nvim-lspconfig',
  --     'hrsh7th/cmp-nvim-lsp',
  --     'hrsh7th/cmp-buffer',
  --     'hrsh7th/cmp-path',
  --     'hrsh7th/cmp-cmdline',

  --     'L3MON4D3/LuaSnip',
  --     'saadparwaiz1/cmp_luasnip'
  --   },
  --   config = function()
  --     require 'packs.cmp'
  --   end
  -- }

  -- -- visual
  -- use { 'nvim-treesitter/nvim-treesitter',
  --   run = ':TSUpdate'
  -- }

  -- use {'norcalli/nvim-colorizer.lua',
  --   config = function() require 'colorizer'.setup() end
  -- }

  -- use 'jeffkreeftmeijer/vim-numbertoggle' -- set absolute number when not focus
  -- use 'Yggdroot/indentLine' -- show indent line
  -- use {'ojroques/nvim-hardline', -- status line
  --   config = function() require 'hardline'.setup{} end
  -- }

  -- -- moving
  -- use {'phaazon/hop.nvim', -- easy motion
  --   config = function()
  --     require 'hop'.setup()

  --     vim.api.nvim_set_keymap('n', '<Leader>ww', ':HopWord<CR>', {noremap=true })
  --   end
  -- }

  -- -- others
  -- use {'akinsho/toggleterm.nvim', -- easy toggle terminal
  --   config = function() require 'packs.toggleterm' end
  -- }

  -- -- autocomplete
  -- use {'liuchengxu/vim-which-key', -- show possible keybinding
  --   config = function ()
  --     vim.api.nvim_set_keymap('n', '<Leader>', ':WhichKey \",\"<CR>', {silent=true})
  --   end
  -- }
end)
