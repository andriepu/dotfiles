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

  use {'nvim-treesitter/nvim-treesitter',  -- Syntax engine {{{
    run = ':TSUpdate',
    config = function ()
      require('nvim-treesitter.configs').setup {
        highlight = {
          enable = true,
        }
      }
    end,
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

  -- use {'p00f/nvim-ts-rainbow', -- Rainbow parentheses {{{
  --   config = function ()
  --     require("nvim-treesitter.configs").setup {
  --       rainbow = {
  --         enable = true,
  --       }
  --     }
  --   end
  -- } -- }}}

  use {'ojroques/nvim-hardline', -- Status bar {{{
    config = function() require 'hardline'.setup{} end
  } -- }}}

  use {'lukas-reineke/indent-blankline.nvim', -- Show indentation {{{
    config = function ()
      require('ibl').setup {
        exclude = {
          filetypes = {'help', 'alpha', 'lspinfo', 'packer'},
          buftypes = {'terminal', 'quickfix'},
        }
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
        dashboard.button( 'r', '   Recents' , ':Telescope oldfiles<CR>'),
        dashboard.button( 'f', ' 󰱽  Find Files' , ':Telescope find_files<CR>'),
        dashboard.button( '/', ' 󱩾  Search Text' , ':Telescope live_grep<CR>'),
        dashboard.button( 'o', '   Options' , ':e $HOME/.config/nvim | :cd %:p:h | wincmd k | pwd<CR>'),
        dashboard.button( 'p', '   Plugins' , ':cd $HOME/.config/nvim | :e lua/plugins.lua | wincmd k | pwd<CR>'),
        dashboard.button( 'q', ' 󰩈  Quit', ':q<CR>'),
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
        defaults = {
          file_ignore_patterns = {
            '.git/',
            'pnpm-lock.yaml',
            'packer_compiled'
          },
          vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--hidden'
          }
        },
        pickers = {
          find_files = {
            find_command = { 'fd', '--type', 'f', '--strip-cwd-prefix', '-H' },
          },
          oldfiles = {
            cwd_only = true
          },
          buffers = {
            sort_lastused = true,
            sort_mru = true
          },
        }
      }

      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      map('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
      map('n', '<Leader>fg', ':Telescope live_grep<CR>', opts)
      map('n', '<Leader>fc', ':Telescope grep_string<CR>', opts)
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
      require'ts_context_commentstring'.setup {
        enable_autocmd = false,
        context_commentstring = {
          enable = true,
          config = {
            css = '/* %s */',
            scss = '// %s',
          }
        },
      }

      vim.g.skip_ts_context_commentstring_module = true
    end
  } -- }}}

  use 'tpope/vim-surround' -- Easy edit pairs

  use {'windwp/nvim-autopairs', -- auto pairing {{{
    config = function ()
      require('nvim-autopairs').setup()
    end
  } -- }}}

  use {'johmsalas/text-case.nvim', -- Change Case {{{
    config = function()
      require('textcase').setup {}
      require('telescope').load_extension('textcase')

      vim.api.nvim_set_keymap('n', 'ga.', '<cmd>TextCaseOpenTelescope<CR>', { desc = "Telescope" })
      vim.api.nvim_set_keymap('v', 'ga.', "<cmd>TextCaseOpenTelescope<CR>", { desc = "Telescope" })
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
        open_mapping = [[<C- >]],
        direction = 'vertical',
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

      local map = vim.api.nvim_set_keymap
      map('n', [[<C-S- >]], ':ToggleTerm direction=float<CR>', {noremap = true})

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


  -- FORMATTING & AUTOCOMPLETE {{{
  
  use {'windwp/nvim-ts-autotag', -- Autoclose tag {{{
    config = function ()
      require('nvim-ts-autotag').setup()
    end
  } -- }}}

  use {'hrsh7th/nvim-cmp', -- Autocomplete {{{
    requires = {
      'hrsh7th/cmp-nvim-lsp', -- LSP completions
      'hrsh7th/cmp-buffer', -- buffer completions
      'hrsh7th/cmp-path', -- path completions
      'hrsh7th/cmp-cmdline', -- cmdline completions
      'hrsh7th/cmp-nvim-lua', -- nvim lua completions
    },
    config = function ()
      local cmp = require'cmp'
      local luasnip = require'luasnip'

      local check_backspace = function()
        local col = vim.fn.col '.' - 1
        return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s'
      end

      local kind_icons = {
        Text = "󰊄",
        Method = "",
        Function = "󰊕",
        Constructor = "",
        Field = "󰽐",
        Variable = "",
        Class = "",
        Interface = "",
        Module = "󱒌",
        Property = "",
        Unit = "",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "",
        Event = "",
        Operator = "",
        TypeParameter = "",
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
          { name = 'nvim_lsp' },
          { name = 'path' },
          { name = 'luasnip' },
          { name = 'buffer' },
          { name = 'nvim_lua' },
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

  use {'williamboman/mason.nvim'}

  use {'williamboman/mason-lspconfig.nvim',
    config = function ()
      local mason_lspconfig = require('mason-lspconfig')
      local cmp_nvim_lsp = require('cmp_nvim_lsp')

      local servers = { 'bashls', 'eslint', 'jsonls', 'tailwindcss', 'volar', 'taplo', 'tsserver' }

      require('mason').setup({
        ui = {
          icons = {
            package_installed = "󰄴 ",
            package_pending = "󰏦 ",
            package_uninstalled = "󰝦 "
          }
        }
      })

      mason_lspconfig.setup({
        ensure_installed = servers
      })

      local setup_opts = {
        on_attach = function(_, bufnr)
          vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
        end,
        capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
      }

      for _, name in pairs(servers) do
        local status, opts = pcall(require, 'lsp.' .. name)
        if (status) then
          require('lspconfig')[name].setup(vim.tbl_deep_extend('force', opts, setup_opts))
        else
          require('lspconfig')[name].setup(setup_opts)
        end
      end

      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

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
    end
  }

  use {'neovim/nvim-lspconfig',
    config = function ()
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      map('n', '<Leader>lspr', ':LspRestart<CR>', opts)

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
        underline = false,
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
  }

  -- use { 'mhartington/formatter.nvim', -- Formatter
  --   config = function ()
  --     local prettier_format = function ()
  --       return {
  --         exe = "prettierd",
  --         args = {vim.api.nvim_buf_get_name(0)},
  --         stdin = true
  --       }
  --     end

  --     local eslint_format = function ()
  --       return {
  --         exe = "eslint_d",
  --         args = { '--stdin', '--stdin-filename', vim.api.nvim_buf_get_name(0), '--fix-to-stdout' },
  --         stdin = true
  --       }
  --     end

  --     require('formatter').setup({
  --       logging = false,
  --       filetype = {
  --         typescript = {
  --           prettier_format,
  --           eslint_format,
  --         },
  --         javascript = {
  --           prettier_format,
  --           eslint_format,
  --         },
  --         json = {
  --           prettier_format,
  --           eslint_format,
  --         },
  --         markdown = {
  --           prettier_format,
  --           eslint_format,
  --         },
  --       }
  --     })

  --     -- vim.cmd [[
  --     --  augroup FormatAutogroup
  --     --     autocmd!
  --     --     autocmd BufWritePre *.ts,*.js,*.vue,*.json EslintFixAll
  --     --     autocmd BufWritePost * FormatWriteLock
  --     --   augroup end
  --     -- ]]
  --   end
  -- }
    
  -- FORMATTING & DIAGNOSTICS }}}

  -- Automatically set up your configuration<img v-bind="$attrs" /> after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

-- vim:set foldmethod=marker foldlevel=0:
