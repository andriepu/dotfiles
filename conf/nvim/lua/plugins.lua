local fn = vim.fn

-- Setup Packer {{{

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})

	print("Installing packer close and reopen Neovim...")

	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- }}}

-- Install your plugins here
return packer.startup(function(use)
	-- GENERAL {{{

	use("wbthomason/packer.nvim") -- Have packer manage itself

	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim

	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins

	use({
		"nvim-treesitter/nvim-treesitter", -- Syntax engine {{{
		run = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
				},
			})
		end,
	}) -- }}}

	use("L3MON4D3/LuaSnip") -- Snippet engine

	-- GENERAL }}}

	-- THEME & VISUALS {{{

	use({
		"EdenEast/nightfox.nvim", -- Colorscheme {{{
		config = function()
			vim.cmd("colorscheme nightfox")
		end,
	}) -- }}}

	use("kyazdani42/nvim-web-devicons") -- Icons

	use({
		"norcalli/nvim-colorizer.lua", -- Show color code visually {{{
		config = function()
			require("colorizer").setup()
		end,
	}) -- }}}

	use("jeffkreeftmeijer/vim-numbertoggle") -- Toggle between absolute and relative automatically

	use({
		"ojroques/nvim-hardline", -- Status bar {{{
		config = function()
			require("hardline").setup({})
		end,
	}) -- }}}

	use({
		"lukas-reineke/indent-blankline.nvim", -- Show indentation {{{
		config = function()
			require("ibl").setup({
				exclude = {
					filetypes = { "help", "alpha", "lspinfo", "packer" },
					buftypes = { "terminal", "quickfix" },
				},
			})
		end,
	}) -- }}}

	use({
		"goolord/alpha-nvim", -- Startup screen {{{
		config = function()
			local dashboard = require("alpha.themes.dashboard")

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
				dashboard.button("-", "   Explore", ":Oil<CR>"),
				dashboard.button("r", "   Recents", ":Telescope oldfiles<CR>"),
				dashboard.button("f", " 󰱽  Find Files", ":Telescope find_files<CR>"),
				dashboard.button("/", " 󱩾  Search Text", ":Telescope live_grep<CR>"),
				dashboard.button("o", "   Options", ":e $HOME/.config/nvim | :cd %:p:h | wincmd k | pwd<CR>"),
				dashboard.button(
					"p",
					"   Plugins",
					":cd $HOME/.config/nvim | :e lua/plugins.lua | wincmd k | pwd<CR>"
				),
				dashboard.button("q", " 󰩈  Quit", ":q<CR>"),
			}

			require("alpha").setup(dashboard.config)

			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }

			map("n", "<Leader>qq", ":Alpha<CR>", opts)
		end,
	}) -- }}}

	-- THEME & VISUALS }}}

	-- FILES {{{

	use({
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup({
				columns = {
					"icon",
					"size",
				},
				keymaps = {
					["g?"] = "actions.show_help",
					["<CR>"] = "actions.select",
					["<C-p>"] = "actions.preview",
					["<C-c>"] = "actions.close",
					["<C-r>"] = "actions.refresh",
					["-"] = "actions.parent",
					["_"] = "actions.open_cwd",
					["`"] = "actions.cd",
					["~"] = { "actions.cd", opts = { scope = "tab" } },
					["gs"] = "actions.change_sort",
					["gx"] = "actions.open_external",
					["g."] = "actions.toggle_hidden",
					["g\\"] = "actions.toggle_trash",
				},
				use_default_keymaps = false,
				view_options = {
					-- show_hidden = true, -- Disable by default. Just press "g." to show hidden files
				},
			})

			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		end,
	})

	use({
		"nvim-telescope/telescope.nvim", -- Fuzzy finder {{{
		config = function()
			require("telescope").setup({
				defaults = {
					mappings = {
						n = {
							["yp"] = function(prompt_bufnr)
								local action_state = require("telescope.actions.state")
								local picker = action_state.get_current_picker(prompt_bufnr)
								local row = picker:get_selection_row()
								local entry = picker.manager:get_entry(picker:get_index(row))

								-- Get full path
								local full_path = entry.path or entry.filename
								if not full_path then
									print("❌ No path available to copy.")
									return
								end

								-- Convert to relative path
								local rel_path = vim.fn.fnamemodify(full_path, ":.")
								vim.fn.setreg("+", rel_path)
								print("📋 Copied relative path: " .. rel_path)
							end,
						},
					},
					file_ignore_patterns = {
						".git/",
						".nuxt/",
						".next/",
						"node_modules/",
						"pnpm-lock.yaml",
						"packer_compiled",
					},
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"--hidden",
					},
				},
				pickers = {
					find_files = {
						find_command = { "fd", "--type", "f", "--strip-cwd-prefix", "-H" },
					},
					oldfiles = {
						cwd_only = true,
					},
					buffers = {
						sort_lastused = true,
						sort_mru = true,
					},
				},
			})

			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }

			map("n", "<Leader>ff", ":Telescope find_files<CR>", opts)
			map("n", "<Leader>fg", ":Telescope live_grep<CR>", opts)
			map("n", "<Leader>fc", ":Telescope grep_string<CR>", opts)
			map("n", "<Leader>fb", ":Telescope buffers<CR>", opts)
			map("n", "<Leader>fr", ":Telescope resume<CR>", opts)
		end,
	}) -- }}}

	-- FILES }}}

	-- EDITING {{{

	use({
		"mcauley-penney/tidy.nvim", -- Remove trailing whitespaces {{{
		event = "BufWritePre",
	}) -- }}}

	use("tpope/vim-commentary") -- Easy commentary

	use({
		"JoosepAlviste/nvim-ts-context-commentstring", -- Setting commentstring option based on cursor location {{{
		config = function()
			require("ts_context_commentstring").setup({
				enable_autocmd = false,
				context_commentstring = {
					enable = true,
					config = {
						css = "/* %s */",
						scss = "// %s",
					},
				},
			})

			vim.g.skip_ts_context_commentstring_module = true
		end,
	}) -- }}}

	use("tpope/vim-surround") -- Easy edit pairs

	use({
		"windwp/nvim-autopairs", -- auto pairing {{{
		config = function()
			require("nvim-autopairs").setup()
		end,
	}) -- }}}

	use({
		"johmsalas/text-case.nvim", -- Change Case {{{
		config = function()
			require("textcase").setup({})
			require("telescope").load_extension("textcase")

			vim.api.nvim_set_keymap("n", "ga.", "<cmd>TextCaseOpenTelescope<CR>", { desc = "Telescope" })
			vim.api.nvim_set_keymap("v", "ga.", "<cmd>TextCaseOpenTelescope<CR>", { desc = "Telescope" })
		end,
	}) -- }}}

	use({
		"svermeulen/vim-cutlass", -- Overrides the delete operations to actually just delete without affecting current yank {{{
		config = function()
			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }

			map("n", "m", "d", opts)
			map("x", "m", "d", opts)

			map("n", "mm", "dd", opts)
			map("n", "M", "D", opts)
		end,
	}) -- }}}

	use({
		"svermeulen/vim-yoink", -- Maintain yanks history {{{
		config = function()
			local map = vim.api.nvim_set_keymap
			local opts = { silent = true }

			vim.g.yoinkIncludeDeleteOperations = 1

			map("n", "<C-n>", "<plug>(YoinkPostPasteSwapBack)", opts)
			map("n", "<C-p>", "<plug>(YoinkPostPasteSwapForward)", opts)

			map("n", "p", "<plug>(YoinkPaste_p)", opts)
			map("n", "P", "<plug>(YoinkPaste_P)", opts)

			map("n", "gp", "<plug>(YoinkPaste_gp)", opts)
			map("n", "gP", "<plug>(YoinkPaste_gP)", opts)
		end,
	}) -- }}}

	-- EDITITNG }}}

	-- NAVIGATIONS {{{

	use({
		"phaazon/hop.nvim", -- Jump anywhere in a document with as few keystrokes as possible {{{
		config = function()
			require("hop").setup()

			vim.api.nvim_set_keymap("n", "<Leader>ww", ":HopWord<CR>", { noremap = true })
		end,
	}) -- }}}

	use({
		"folke/which-key.nvim", -- Keymaps hints {{{
		config = function()
			require("which-key").setup()
		end,
	}) -- }}}

	use({
		"karb94/neoscroll.nvim", -- Smooth scroll {{{
		config = function()
			require("neoscroll").setup({})
		end,
	}) -- }}}

	use({
		"yamatsum/nvim-cursorline", -- Highlight word under cursor
		config = function()
			require("nvim-cursorline").setup({
				cursorline = {
					enable = true,
					timeout = 1000,
					number = false,
				},
				cursorword = {
					enable = true,
					min_length = 3,
					hl = { underline = true },
				},
			})
		end,
	})

	-- use {'edluffy/specs.nvim', -- Highlight cursor position {{{
	--   config = function()
	--     require('specs').setup{
	--       show_jumps = true,
	--       min_jump = 30,
	--       popup = {
	--         inc_ms = 10,
	--         width = 25,
	--         fader = require('specs').pulse_fader,
	--       },
	--     }

	--     local map = vim.api.nvim_set_keymap
	--     local opts = { silent = true }

	--     map('n', '<Leader><Space>', ':nohlsearch<CR>:lua require("specs").show_specs()<CR>', opts)
	--     map('n', 'n', 'n:lua require("specs").show_specs()<CR>', opts)
	--     map('n', 'N', 'N:lua require("specs").show_specs()<CR>', opts)
	--   end
	-- } -- }}}

	use({
		"ethanholz/nvim-lastplace", -- Reopen files at last edit position {{{
		config = function()
			require("nvim-lastplace").setup({
				lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
				lastplace_ignore_filetype = { "gitcommit", "gitrebase" },
				lastplace_open_folds = true,
			})
		end,
	}) -- }}}

	-- NAVIGATIONS }}}

	-- TABS & WINDOWS {{{

	use({
		"akinsho/toggleterm.nvim", -- Persist and toggle multiple terminals during an editing session {{{
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<C- >]],
				direction = "float",
				start_in_insert = true,
				float_opts = { border = "curved" },
				size = function(term)
					if term.direction == "horizontal" then
						return vim.o.lines * 0.28
					elseif term.direction == "vertical" then
						return vim.o.columns * 0.4
					end
				end,
			})

			function _G.set_terminal_keymaps()
				local map = vim.api.nvim_buf_set_keymap
				local opts = { noremap = true }

				map(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
				map(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
				map(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
				map(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
			end

			local map = vim.api.nvim_set_keymap
			map("n", [[<C-S- >]], ":ToggleTerm direction=vertical<CR>", { noremap = true })

			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
			vim.cmd("autocmd TermOpen * setlocal signcolumn=yes")
		end,
	}) -- }}}

	-- TAB & WINDOWS }}}

	-- GIT {{{

	use({
		"kdheepak/lazygit.nvim", -- Open lazygit in neovim {{{
		config = function()
			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }

			map("n", "<Leader>gg", ":LazyGit<CR>", opts)
		end,
	}) -- }}}

	use({
		"lewis6991/gitsigns.nvim", -- Show git sign in number column {{{
		config = function()
			require("gitsigns").setup()
		end,
	}) -- }}}

	use({
		"f-person/git-blame.nvim",
		config = function()
			require("gitblame").setup()
		end,
	})

	-- GIT }}}

	-- FORMATTING & AUTOCOMPLETE {{{

	use({
		"stevearc/conform.nvim", -- Formatter {{{
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					go = { "goimports", "gofumpt" },
					javascript = { "prettierd", "eslint_d" },
					typescript = { "prettierd", "eslint_d" },
					json = { "prettierd" },
					lua = { "stylua" },
					vue = { "prettierd", "eslint_d" },
				},
				format_on_save = {
					lsp_format = "fallback",
					timeout_ms = 500,
				},
			})
		end,
	}) -- }}}

	use({
		"windwp/nvim-ts-autotag", -- Autoclose tag {{{
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	}) -- }}}

	use({
		"hrsh7th/nvim-cmp", -- Autocomplete {{{
		requires = {
			"hrsh7th/cmp-nvim-lsp", -- LSP completions
			"hrsh7th/cmp-buffer", -- buffer completions
			"hrsh7th/cmp-path", -- path completions
			"hrsh7th/cmp-cmdline", -- cmdline completions
			"hrsh7th/cmp-nvim-lua", -- nvim lua completions
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			local lspkind_comparator = function(conf)
				local lsp_types = require("cmp.types").lsp
				return function(entry1, entry2)
					if entry1.source.name ~= "nvim_lsp" then
						if entry2.source.name == "nvim_lsp" then
							return false
						else
							return nil
						end
					end
					local kind1 = lsp_types.CompletionItemKind[entry1:get_kind()]
					local kind2 = lsp_types.CompletionItemKind[entry2:get_kind()]

					local priority1 = conf.kind_priority[kind1] or 0
					local priority2 = conf.kind_priority[kind2] or 0
					if priority1 == priority2 then
						return nil
					end
					return priority2 < priority1
				end
			end

			local label_comparator = function(entry1, entry2)
				return entry1.completion_item.label < entry2.completion_item.label
			end

			local check_backspace = function()
				local col = vim.fn.col(".") - 1
				return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
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

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				mapping = {
					["<C-j>"] = cmp.mapping.select_next_item(),
					["<C-k>"] = cmp.mapping.select_prev_item(),
					["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
					["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
					["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
					["<C-y>"] = cmp.config.disable,
					["<Esc>"] = cmp.mapping({
						i = cmp.mapping.abort(),
						c = cmp.mapping.close(),
					}),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
					["<Tab>"] = cmp.mapping(function(fallback)
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
					end, { "i", "s" }),
					["<S-Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_prev_item()
						elseif luasnip.jumpable(-1) then
							luasnip.jump(-1)
						else
							fallback()
						end
					end, { "i", "s" }),
				},
				formatting = {
					fields = { "kind", "abbr", "menu" },
					format = function(entry, vim_item)
						vim_item.kind = string.format("%s ", kind_icons[vim_item.kind])

						vim_item.menu = ({
							nvim_lsp = "[Lsp]",
							nvim_lua = "[Lua]",
							luasnip = "[Snippet]",
							buffer = "[Buffer]",
							path = "[Path]",
						})[entry.source.name]

						return vim_item
					end,
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "path" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "nvim_lua" },
				},
			})

			cmp.setup.cmdline(":", {
				sources = {
					{ name = "cmdline" },
				},
			})

			cmp.setup.cmdline("/", {
				sources = {
					{ name = "buffer" },
				},
			})
		end,
	}) -- }}}

	use({ "williamboman/mason.nvim" })

	use({ "neovim/nvim-lspconfig" })

	use({
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local mason_lspconfig = require("mason-lspconfig")
			local cmp_nvim_lsp = require("cmp_nvim_lsp")

			local servers = { "bashls", "eslint", "jsonls", "tailwindcss", "ts_ls", "gopls" }

			require("mason").setup({
				ui = {
					icons = {
						package_installed = "󰄴 ",
						package_pending = "󰏦 ",
						package_uninstalled = "󰝦 ",
					},
				},
			})

			mason_lspconfig.setup({
				ensure_installed = servers,
				automatic_installation = false,
			})

			local setup_opts = {
				on_attach = function(_, bufnr)
					vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
				end,
				capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities()),
			}

			for _, name in pairs(servers) do
				local status, opts = pcall(require, "lsp." .. name)

				local final_opts = vim.tbl_deep_extend("force", setup_opts, status and opts or {})
				vim.lsp.config[name] = final_opts
			end

			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }

			map("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>", opts) --> jumps to the definition of the symbol under the cursor
			map("n", "<leader>lh", ":lua vim.lsp.buf.hover()<CR>", opts) --> information about the symbol under the cursor in a floating window
			map("n", "<leader>li", ":lua vim.lsp.buf.implementation()<CR>", opts) --> lists all the implementations for the symbol under the cursor in the quickfix window
			map("n", "<leader>rn", ":lua vim.lsp.util.rename()<CR>", opts) --> renaname old_fname to new_fname
			map("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts) --> selects a code action available at the current cursor position
			map("n", "<leader>gr", ":lua vim.lsp.buf.references()<CR>", opts) --> lists all the references to the symbl under the cursor in the quickfix window
			map("n", "<leader>ld", ":lua vim.diagnostic.open_float()<CR>", opts)
			map("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", opts)
			map("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", opts)
			map("n", "<leader>lq", ":lua vim.diagnostic.setloclist()<CR>", opts)
			map("n", "<leader>lf", ":lua vim.lsp.buf.format({ async = true })<CR>", opts) --> formats the current buffer

			map("n", "<leader>fp", ":!prettier % --write; eslint % --fix<CR><CR>", opts)
		end,
	})

	use({
		"neovim/nvim-lspconfig",
		config = function()
			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }

			map("n", "<Leader>lspr", ":LspRestart<CR>", opts)

			local signs = {
				{ name = "DiagnosticSignError", text = " " },
				{ name = "DiagnosticSignWarn", text = " " },
				{ name = "DiagnosticSignHint", text = " " },
				{ name = "DiagnosticSignInfo", text = " " },
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
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
				},
			}

			vim.diagnostic.config(config)

			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
				border = "rounded",
			})

			vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
				border = "rounded",
			})
		end,
	})

	-- FORMATTING & DIAGNOSTICS }}}

	-- AI {{{
	--
	vim.opt.conceallevel = 2
	vim.opt.concealcursor = "nc"

	-- Required plugins
	-- use 'nvim-lua/plenary.nvim'
	use("MunifTanjim/nui.nvim")
	use({
		"MeanderingProgrammer/render-markdown.nvim",
		requires = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("render-markdown").setup({
				heading = { enabled = true },
				code = { enabled = true },
				bold = { enabled = true },
				italic = { enabled = true },
			})
		end,
	})

	-- Optional dependencies
	-- use 'hrsh7th/nvim-cmp'
	-- use 'nvim-tree/nvim-web-devicons' -- or use 'echasnovski/mini.icons'
	use("HakonHarnes/img-clip.nvim")
	use("zbirenbaum/copilot.lua")
	use("stevearc/dressing.nvim") -- for enhanced input UI
	use("folke/snacks.nvim") -- for modern input UI

	-- Avante.nvim with build process
	use({
		"yetone/avante.nvim",
		branch = "main",
		run = "make",
		config = function()
			require("avante").setup({
				provider = "gemini",
				disabled_tools = { "replace_in_file" },
				providers = {
					gemini = {
						model = "gemini-2.5-flash",
						timeout = 30000,
						extra_request_body = {
							temperature = 0,
							max_tokens = 4096,
						},
					},
				},
				render = {
					markdown = true,
				},
				behaviour = {
					auto_apply_diff_after_generation = false,
					enable_token_counting = false,
				},
				windows = {
					input = {
						prefix = "> ",
						height = 10, -- Height of the input window in vertical layout
					},
				},
				replace_in_file = function(bufnr, start_line, end_line, new_text)
					local lines = vim.split(new_text, "\n", { plain = true })
					vim.api.nvim_buf_set_lines(bufnr, start_line - 1, end_line, false, lines)
				end,
			})
		end,
	})
	-- AI }}}

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

-- vim:set foldmethod=marker foldlevel=0:
