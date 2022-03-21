local fn = vim.fn

-- Setup Packer {{{

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }

  print 'Installing packer close and reopen Neovim...'

  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

-- }}}

-- Install your plugins here
return packer.startup(function(use)

  -- GENERAL {{{

  use 'wbthomason/packer.nvim' -- Have packer manage itself

  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim

  use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins

  use {'neovim/nvim-lspconfig', -- Enable LSP {{{
    config = function ()
      local signs = {
        { name = 'DiagnosticSignError', text = ' ' },
        { name = 'DiagnosticSignWarn', text = ' ' },
        { name = 'DiagnosticSignHint', text = ' ' },
        { name = 'DiagnosticSignInfo', text = ' ' },
      }

      for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
      end

      local config = {
        signs = { active = signs },
        update_in_insert = true,
        underline = true,
        severity_sort = true,
        float = {
          focusable = false,
          style = 'minimal',
          border = 'rounded',
          source = 'always',
          header = '',
          prefix = '',
        },
      }

      vim.diagnostic.config(config)

      vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = 'rounded',
      })

      vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = 'rounded',
      })
    end
  } -- }}}

  use {'nvim-treesitter/nvim-treesitter',  -- Syntax engine {{{
    run = ':TSUpdate',
    config = function ()
      require'nvim-treesitter.configs'.setup {
        highlight = {
          enable = true,
        }
      }
    end
  } -- }}}

  use 'L3MON4D3/LuaSnip' -- Snippet engine

  -- GENERAL }}}


  -- THEME & VISUALS {{{

  use {'EdenEast/nightfox.nvim', -- Colorscheme {{{
    config = function() vim.cmd("colorscheme nightfox") end
  } -- }}}

  use 'kyazdani42/nvim-web-devicons' -- Icons

  use {'norcalli/nvim-colorizer.lua', -- Show color code visually {{{
    config = function() require 'colorizer'.setup() end
  } -- }}}

  use 'jeffkreeftmeijer/vim-numbertoggle' -- Toggle between absolute and relative automatically

  use {'p00f/nvim-ts-rainbow', -- Rainbow parentheses {{{
    config = function ()
      require("nvim-treesitter.configs").setup {
        rainbow = {
          enable = true,
        }
      }
    end
  } -- }}

  use {'ojroques/nvim-hardline', -- Status bar {{{
    config = function() require 'hardline'.setup{} end
  } -- }}}

  use {'lukas-reineke/indent-blankline.nvim', -- Show indentation {{{
    config = function ()
      require('indent_blankline').setup {
        buftype_exclude = {'terminal', 'quickfix'},
        filetype_exclude = {'help', 'alpha', 'lsp-installer', 'lspinfo', 'packer'},
      }
    end
  } -- }}}

  use {'goolord/alpha-nvim', -- Startup screen {{{
    config = function ()
      local dashboard = require('alpha.themes.dashboard')

      dashboard.section.header.val = {
[[                                                                              ]],
[[                                    ██████                                    ]],
[[                                ████▒▒▒▒▒▒████                                ]],
[[                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              ]],
[[                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ]],
[[                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              ]],
[[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          ]],
[[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          ]],
[[                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        ]],
[[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
[[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
[[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
[[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
[[                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        ]],
[[                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        ]],
[[                        ██      ██      ████      ████                        ]],
[[                                                                              ]],
[[                                                                              ]],

      }

      dashboard.section.buttons.val = {
        dashboard.button( '-', '   Explore' , ':Ex<CR>'),
        dashboard.button( 'r', '   Recents' , ':Telescope oldfiles<CR>'),
        dashboard.button( 'f', '   Find Files' , ':Telescope find_files<CR>'),
        dashboard.button( '/', '   Search Text' , ':Telescope live_grep<CR>'),
        dashboard.button( 'o', '   Options' , ':e $HOME/.config/nvim | :cd %:p:h | wincmd k | pwd<CR>'),
        dashboard.button( 'p', '   Plugins' , ':cd $HOME/.config/nvim | :e lua/plugins.lua | wincmd k | pwd<CR>'),
        dashboard.button( 'q', '   Quit', ':q<CR>'),
      }

      require'alpha'.setup(dashboard.config)

      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      map('n', '<Leader>qq', ':Alpha<CR>', opts)
    end
  } -- }}}

  -- THEME & VISUALS }}}


  -- FILES {{{

  use 'tpope/vim-vinegar' -- File explorer

  use {'nvim-telescope/telescope.nvim', -- Fuzzy finder {{{
    config = function ()
      require 'telescope'.setup {
        pickers = {
          find_files = {
            find_command = { 'fd', '--type', 'f', '--strip-cwd-prefix', '-H' }
          },
          oldfiles = {
            cwd_only = true
          }
        }
      }

      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      map('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
      map('n', '<Leader>fg', ':Telescope live_grep<CR>', opts)
      map('n', '<Leader>fb', ':Telescope buffers<CR>', opts)
      map('n', '<Leader>fr', ':Telescope resume<CR>', opts)
    end
  } -- }}}

  -- FILES }}}


  -- EDITING {{{

  use {'McAuleyPenney/tidy.nvim', -- Remove trailing whitespaces {{{
    event = 'BufWritePre'
  } -- }}}

  use 'tpope/vim-commentary' -- Easy commentary

  use {'JoosepAlviste/nvim-ts-context-commentstring', -- Setting commentstring option based on cursor location {{{
    config = function ()
      require'nvim-treesitter.configs'.setup {
        context_commentstring = {
          enable = true,
          config = {
            css = '/* %s */',
            scss = '// %s',
          }
        },
      }
    end
  } -- }}}

  use 'tpope/vim-surround' -- Easy edit pairs

   -- use {'windwp/nvim-autopairs', -- auto pairing {{{
   --  config = function ()
   --    require('nvim-autopairs').setup()
   --  end
   -- } -- }}}

  -- use {'steelsojka/pears.nvim', -- auto bracket pairs {{{
  --   config = function()
  --     local R = require 'pears.rule'

  --     require 'pears'.setup(function(conf)
  --       conf.pair("'", {
  --         close = "'",
  --         -- Don't expand a quote if it comes after an alpha character
  --         should_expand = R.not_(R.start_of_context "[a-zA-Z]")
  --       })
  --     end)
  --   end
  -- } -- }}}

  use {'booperlv/nvim-gomove', -- Shift text position (up/down/left/right) {{{
    config = function ()
      require('gomove').setup({
        map_defaults = false
      })

      local map = vim.api.nvim_set_keymap
      local opts = { silent = true }

      map('n', '<S-h>', '<Plug>GoNSMLeft', opts)
      map('n', '<S-j>', '<Plug>GoNSMDown', opts)
      map('n', '<S-k>', '<Plug>GoNSMUp', opts)
      map('n', '<S-l>', '<Plug>GoNSMRight', opts)

      map('x', '<S-h>', '<Plug>GoVSMLeft', opts)
      map('x', '<S-j>', '<Plug>GoVSMDown', opts)
      map('x', '<S-k>', '<Plug>GoVSMUp', opts)
      map('x', '<S-l>', '<Plug>GoVSMRight', opts)
    end
  } -- }}}

  use {'svermeulen/vim-cutlass', -- Overrides the delete operations to actually just delete without affecting current yank {{{
    config = function()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      map('n', 'm', 'd', opts)
      map('x', 'm', 'd', opts)

      map('n', 'mm', 'dd', opts)
      map('n', 'M', 'D', opts)
    end
  } -- }}}

  use {'svermeulen/vim-yoink', -- Maintain yanks history {{{
    config = function ()
      local map = vim.api.nvim_set_keymap
      local opts = { silent = true }

      vim.g.yoinkIncludeDeleteOperations = 1

      map('n', '<C-n>', '<plug>(YoinkPostPasteSwapBack)', opts)
      map('n', '<C-p>', '<plug>(YoinkPostPasteSwapForward)', opts)

      map('n', 'p', '<plug>(YoinkPaste_p)', opts)
      map('n', 'P', '<plug>(YoinkPaste_P)', opts)

      map('n', 'gp', '<plug>(YoinkPaste_gp)', opts)
      map('n', 'gP', '<plug>(YoinkPaste_gP)', opts)
    end
  } -- }}}

  -- EDITITNG }}}


  -- NAVIGATIONS {{{

  use {'phaazon/hop.nvim', -- Jump anywhere in a document with as few keystrokes as possible {{{
    config = function()
      require 'hop'.setup()

      vim.api.nvim_set_keymap('n', '<Leader>ww', ':HopWord<CR>', { noremap=true })
    end
  } -- }}}

  use {'folke/which-key.nvim', -- Keymaps hints {{{
    config = function ()
      require('which-key').setup()
    end
  } -- }}}

  use {'karb94/neoscroll.nvim', -- Smooth scroll {{{
    config = function() require('neoscroll').setup{} end
  } -- }}}

  use {'edluffy/specs.nvim', -- Highlight cursor position {{{
    config = function()
      require('specs').setup{
        show_jumps = true,
        min_jump = 30,
        popup = {
          inc_ms = 10,
          width = 25,
          fader = require('specs').pulse_fader,
        },
      }

      local map = vim.api.nvim_set_keymap
      local opts = { silent = true }

      map('n', '<Leader><Space>', ':nohlsearch<CR>:lua require("specs").show_specs()<CR>', opts)
      map('n', 'n', 'n:lua require("specs").show_specs()<CR>', opts)
      map('n', 'N', 'N:lua require("specs").show_specs()<CR>', opts)
    end
  } -- }}}

  use {'ethanholz/nvim-lastplace', -- Reopen files at last edit position {{{
    config = function ()
      require'nvim-lastplace'.setup {
        lastplace_ignore_buftype = {'quickfix', 'nofile', 'help'},
        lastplace_ignore_filetype = {'gitcommit', 'gitrebase'},
        lastplace_open_folds = true
      }
    end
  } -- }}}

  -- NAVIGATIONS }}}


  -- TABS & WINDOWS {{{

  use {'akinsho/toggleterm.nvim', -- Persist and toggle multiple terminals during an editing session {{{
    config = function()
      require 'toggleterm'.setup{
        open_mapping = [[<C-\>]],
        direction = 'float',
        start_in_insert = true,
        float_opts = { border = 'curved' },
        size = function(term)
          if term.direction == 'horizontal' then
            return vim.o.lines * 0.28
          elseif term.direction == 'vertical' then
            return vim.o.columns * 0.4
          end
        end
      }

      function _G.set_terminal_keymaps()
        local map = vim.api.nvim_buf_set_keymap
        local opts = { noremap = true }

        map(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
        map(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
        map(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
        map(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
      end

      vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
      vim.cmd 'autocmd TermOpen * setlocal signcolumn=yes'
    end
  } -- }}}

  -- TAB & WINDOWS }}}


  -- GIT {{{

  use {'kdheepak/lazygit.nvim', -- Open lazygit in neovim {{{
    config = function ()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      map('n', '<Leader>gg', ':LazyGit<CR>', opts)
    end
  } -- }}}

  use {'lewis6991/gitsigns.nvim', -- Show git sign in number column {{{
    config = function () require('gitsigns').setup() end
  } -- }}}

  -- GIT }}}


  -- AUTOCOMPLETE {{{

  use {'rafamadriz/friendly-snippets', -- Snippets collection for a set of different programming languages {{{
    config = function ()
      require('luasnip/loaders/from_vscode').lazy_load()
    end
  } -- }}}

  use {'hrsh7th/nvim-cmp', -- Autocomplete {{{
    requires = {
      'hrsh7th/cmp-nvim-lsp', -- LSP completions
      'hrsh7th/cmp-buffer', -- buffer completions
      'hrsh7th/cmp-path', -- path completions
      'hrsh7th/cmp-cmdline', -- cmdline completions
      'hrsh7th/cmp-nvim-lua', -- nvim lua completions
      'saadparwaiz1/cmp_luasnip' -- snippet completions
    },
    config = function ()
      local cmp = require'cmp'
      local luasnip = require'luasnip'

      local check_backspace = function()
        local col = vim.fn.col '.' - 1
        return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s'
      end

      local kind_icons = {
        Text = "",
        Method = "m",
        Function = "",
        Constructor = "",
        Field = "",
        Variable = "",
        Class = "",
        Interface = "",
        Module = "",
        Property = "",
        Unit = "",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "",
        Event = "",
        Operator = "",
        TypeParameter = "",
      }

      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        mapping = {
          ['<C-j>'] = cmp.mapping.select_next_item(),
          ['<C-k>'] = cmp.mapping.select_prev_item(),
          ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-1), { 'i', 'c' }),
          ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(1), { 'i', 'c' }),
          ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
          ['<C-y>'] = cmp.config.disable,
          ['<Esc>'] = cmp.mapping {
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
          },
          ['<CR>'] = cmp.mapping.confirm { select = false },
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expandable() then
              luasnip.expand()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif check_backspace() then
              fallback()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        },
        formatting = {
          fields = { 'kind', 'abbr', 'menu' },
          format = function(entry, vim_item)
            vim_item.kind = string.format('%s ', kind_icons[vim_item.kind])

            vim_item.menu = ({
              nvim_lsp = '[Lsp]',
              nvim_lua = '[Lua]',
              luasnip = '[Snippet]',
              buffer = '[Buffer]',
              path = '[Path]',
            })[entry.source.name]

            return vim_item
          end,
        },
        sources = {
          { name = 'luasnip' },
          { name = 'nvim_lsp' },
          { name = 'nvim_lua' },
          { name = 'path' },
          { name = 'buffer' },
        },
      }

      cmp.setup.cmdline(':', {
        sources = {
          { name = 'cmdline' }
        }
      })

      cmp.setup.cmdline('/', {
        sources = {
          { name = 'buffer' }
        }
      })
    end
  } -- }}}

  -- AUTOCOMPLETE }}}


  -- STYLE & DIAGNOSTICS {{{

  use {'williamboman/nvim-lsp-installer', -- Easy LSP install {{{
    config = function ()
      local lsp_installer = require('nvim-lsp-installer')
      local cmp_nvim_lsp = require('cmp_nvim_lsp')

      lsp_installer.settings({
        ui = {
          icons = {
            server_installed = " ",
            server_pending = " ",
            server_uninstalled = " "
          }
        }
      })

      -- Include the servers you want to have installed by default below
      local servers = {
        'bashls',
        'cssls',
        'eslint',
        'html',
        'volar',
        'yamlls',
      }

      for _, name in pairs(servers) do
        local server_is_found, server = lsp_installer.get_server(name)
        if server_is_found and not server:is_installed() then
          print('Installing ' .. name)
          server:install()
        end
      end

      lsp_installer.on_server_ready(function(server)
        local setup_opts = {
          on_attach = function (_, bufnr)
            local map = vim.api.nvim_set_keymap
            local opts = { noremap = true, silent = true }

            vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

            map('n', '<leader>ld', ':lua vim.lsp.buf.definition()<CR>', opts) --> jumps to the definition of the symbol under the cursor
            map('n', '<leader>lh', ':lua vim.lsp.buf.hover()<CR>', opts) --> information about the symbol under the cursos in a floating window
            map('n', '<leader>li', ':lua vim.lsp.buf.implementation()<CR>', opts) --> lists all the implementations for the symbol under the cursor in the quickfix window
            map('n', '<leader>rn', ':lua vim.lsp.util.rename()<CR>', opts) --> renaname old_fname to new_fname
            map('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>', opts) --> selects a code action available at the current cursor position
            map('n', '<leader>gr', ':lua vim.lsp.buf.references()<CR>', opts) --> lists all the references to the symbl under the cursor in the quickfix window
            map('n', '<leader>ld', ':lua vim.diagnostic.open_float()<CR>', opts)
            map('n', '[d', ':lua vim.diagnostic.goto_prev()<CR>', opts)
            map('n', ']d', ':lua vim.diagnostic.goto_next()<CR>', opts)
            map('n', '<leader>lq', ':lua vim.diagnostic.setloclist()<CR>', opts)
            map('n', '<leader>lf', ':lua vim.lsp.buf.formatting()<CR>', opts) --> formats the current buffer
          end,
          capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
        }

        if server.name == 'sumneko_lua' then
          local sumneko_opts = require('lsp.sumneko_lua')
          setup_opts = vim.tbl_deep_extend('force', sumneko_opts, setup_opts)
        end

        if server.name == 'typescript' then
          local volar_opts = require('lsp.volar')
          setup_opts = vim.tbl_deep_extend('force', volar_opts, setup_opts)
        end

        -- This setup() function is exactly the same as lspconfig's setup function.
        -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        server:setup(setup_opts)
      end)
    end
  } -- }}}

  -- STYLE & DIAGNOSTICS }}}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

-- vim:set foldmethod=marker foldlevel=0: