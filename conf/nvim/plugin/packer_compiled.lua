-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1753364724/share/lua/5.1/?.lua;/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1753364724/share/lua/5.1/?/init.lua;/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1753364724/lib/luarocks/rocks-5.1/?.lua;/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1753364724/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1753364724/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n�\22\0\0\t\0'\1F6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\2\5\0=\2\4\0019\1\2\0009\1\6\0014\2\b\0009\3\a\0'\5\b\0'\6\t\0'\a\n\0B\3\4\2>\3\1\0029\3\a\0'\5\v\0'\6\f\0'\a\r\0B\3\4\2>\3\2\0029\3\a\0'\5\14\0'\6\15\0'\a\16\0B\3\4\2>\3\3\0029\3\a\0'\5\17\0'\6\18\0'\a\19\0B\3\4\2>\3\4\0029\3\a\0'\5\20\0'\6\21\0'\a\22\0B\3\4\2>\3\5\0029\3\a\0'\5\23\0'\6\24\0'\a\25\0B\3\4\2>\3\6\0029\3\a\0'\5\26\0'\6\27\0'\a\28\0B\3\4\0?\3\0\0=\2\4\0016\1\0\0'\3\29\0B\1\2\0029\1\30\0019\3\31\0B\1\2\0016\1 \0009\1!\0019\1\"\0015\2#\0\18\3\1\0'\5$\0'\6%\0'\a&\0\18\b\2\0B\3\5\1K\0\1\0\15:Alpha<CR>\15<Leader>qq\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\vconfig\nsetup\nalpha\v:q<CR>\16 󰩈  Quit\6qE:cd $HOME/.config/nvim | :e lua/plugins.lua | wincmd k | pwd<CR>\18   Plugins\6p;:e $HOME/.config/nvim | :cd %:p:h | wincmd k | pwd<CR>\18   Options\6o\29:Telescope live_grep<CR>\23 󱩾  Search Text\6/\30:Telescope find_files<CR>\22 󰱽  Find Files\6f\28:Telescope oldfiles<CR>\18   Recents\6r\r:Oil<CR>\18   Explore\6-\vbutton\fbuttons\1\19\0\0S                                                                              _                                    ██████                                    o                                ████▒▒▒▒▒▒████                                w                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              \127                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            w                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              \127                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          \127                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          \127                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        �\1                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        k                        ██      ██      ████      ████                        S                                                                              S                                                                              \bval\vheader\fsection\27alpha.themes.dashboard\frequire\15����\4\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["avante.nvim"] = {
    config = { "\27LJ\2\nu\0\4\f\0\6\1\0166\4\0\0009\4\1\4\18\6\3\0'\a\2\0005\b\3\0B\4\4\0026\5\0\0009\5\4\0059\5\5\5\18\a\0\0\23\b\0\1\18\t\2\0+\n\1\0\18\v\4\0B\5\6\1K\0\1\0\23nvim_buf_set_lines\bapi\1\0\1\nplain\2\6\n\nsplit\bvim\2�\4\1\0\6\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\17\0005\4\16\0=\4\18\3=\3\19\0023\3\20\0=\3\21\2B\0\2\1K\0\1\0\20replace_in_file\0\fwindows\ninput\1\0\1\ninput\0\1\0\2\vprefix\a> \vheight\3\n\14behaviour\1\0\2%auto_apply_diff_after_generation\1\26enable_token_counting\1\vrender\1\0\1\rmarkdown\2\14providers\vgemini\1\0\1\vgemini\0\23extra_request_body\1\0\2\15max_tokens\3� \16temperature\3\0\1\0\3\nmodel\21gemini-2.5-flash\23extra_request_body\0\ftimeout\3��\1\19disabled_tools\1\2\0\0\20replace_in_file\1\0\a\19disabled_tools\0\14providers\0\20replace_in_file\0\vrender\0\14behaviour\0\fwindows\0\rprovider\vgemini\nsetup\vavante\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/avante.nvim",
    url = "https://github.com/yetone/avante.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["conform.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\18\0=\3\19\2B\0\2\1K\0\1\0\19format_on_save\1\0\2\15timeout_ms\3�\3\15lsp_format\rfallback\21formatters_by_ft\1\0\2\19format_on_save\0\21formatters_by_ft\0\bvue\1\3\0\0\14prettierd\reslint_d\blua\1\2\0\0\vstylua\tjson\1\2\0\0\14prettierd\15typescript\1\3\0\0\14prettierd\reslint_d\15javascript\1\3\0\0\14prettierd\reslint_d\ago\1\0\6\blua\0\bvue\0\15javascript\0\tjson\0\ago\0\15typescript\0\1\3\0\0\14goimports\fgofumpt\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["copilot.lua"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["git-blame.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitblame\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/git-blame.nvim",
    url = "https://github.com/f-person/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\17:HopWord<CR>\15<Leader>ww\6n\20nvim_set_keymap\bapi\bvim\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["img-clip.nvim"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/img-clip.nvim",
    url = "https://github.com/HakonHarnes/img-clip.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\fexclude\1\0\1\fexclude\0\rbuftypes\1\3\0\0\rterminal\rquickfix\14filetypes\1\0\2\rbuftypes\0\14filetypes\0\1\5\0\0\thelp\nalpha\flspinfo\vpacker\nsetup\bibl\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    config = { "\27LJ\2\ny\0\0\b\0\a\0\v6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\17:LazyGit<CR>\15<Leader>gg\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\nc\0\2\a\0\5\0\b6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\1K\0\1\0\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim�\f\1\0\16\0008\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0025\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\t\0005\6\a\0005\a\6\0=\a\b\6=\6\n\5B\3\2\0019\3\5\0005\5\v\0=\2\f\5B\3\2\0015\3\14\0003\4\r\0=\4\15\0039\4\16\0016\6\17\0009\6\18\0069\6\19\0069\6\20\6B\6\1\0A\4\0\2=\4\21\0036\4\22\0\18\6\2\0B\4\2\4H\a\20�6\t\23\0006\v\0\0'\f\24\0\18\r\b\0&\f\r\fB\t\3\0036\v\17\0009\v\25\v'\r\26\0\18\14\3\0\15\0\t\0X\15\2�\f\15\n\0X\15\1�4\15\0\0B\v\4\0026\f\17\0009\f\18\f9\f\27\f<\v\b\fF\a\3\3R\a�\1276\4\17\0009\4\28\0049\4\29\0045\5\30\0\18\6\4\0'\b\31\0'\t \0'\n!\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t\"\0'\n#\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t$\0'\n%\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t&\0'\n'\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t(\0'\n)\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t*\0'\n+\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t,\0'\n-\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t.\0'\n/\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t0\0'\n1\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t2\0'\n3\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t4\0'\n5\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t6\0'\n7\0\18\v\5\0B\6\5\1K\0\1\0001:!prettier % --write; eslint % --fix<CR><CR>\15<leader>fp2:lua vim.lsp.buf.format({ async = true })<CR>\15<leader>lf):lua vim.diagnostic.setloclist()<CR>\15<leader>lq(:lua vim.diagnostic.goto_next()<CR>\a]d(:lua vim.diagnostic.goto_prev()<CR>\a[d):lua vim.diagnostic.open_float()<CR>\15<leader>ld&:lua vim.lsp.buf.references()<CR>\15<leader>gr':lua vim.lsp.buf.code_action()<CR>\15<leader>ca#:lua vim.lsp.util.rename()<CR>\15<leader>rn*:lua vim.lsp.buf.implementation()<CR>\15<leader>li!:lua vim.lsp.buf.hover()<CR>\15<leader>lh&:lua vim.lsp.buf.definition()<CR>\15<leader>gd\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\vconfig\nforce\20tbl_deep_extend\tlsp.\npcall\npairs\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\25default_capabilities\14on_attach\1\0\2\14on_attach\0\17capabilities\0\0\21ensure_installed\1\0\2\27automatic_installation\1\21ensure_installed\0\aui\1\0\1\aui\0\nicons\1\0\1\nicons\0\1\0\3\24package_uninstalled\n󰝦 \22package_installed\n󰄴 \20package_pending\n󰏦 \nsetup\nmason\1\a\0\0\vbashls\veslint\vjsonls\16tailwindcss\nts_ls\ngopls\17cmp_nvim_lsp\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n�\2\0\2\a\2\6\0/9\2\0\0009\2\1\2\6\2\2\0X\2\t�9\2\0\0019\2\1\2\a\2\2\0X\2\3�+\2\1\0L\2\2\0X\2\2�+\2\0\0L\2\2\0-\2\0\0009\2\3\2\18\5\0\0009\3\4\0B\3\2\0028\2\3\2-\3\0\0009\3\3\3\18\6\1\0009\4\4\1B\4\2\0028\3\4\3-\4\1\0009\4\5\0048\4\2\4\14\0\4\0X\5\1�)\4\0\0-\5\1\0009\5\5\0058\5\3\5\14\0\5\0X\6\1�)\5\0\0\5\4\5\0X\6\2�+\6\0\0L\6\2\0\0\5\4\0X\6\2�+\6\1\0X\a\1�+\6\2\0L\6\2\0\1�\0�\18kind_priority\rget_kind\23CompletionItemKind\rnvim_lsp\tname\vsource:\1\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0013\2\3\0002\0\0�L\2\2\0\0\blsp\14cmp.types\frequireE\0\2\4\0\2\0\n9\2\0\0009\2\1\0029\3\0\0019\3\1\3\0\2\3\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\nlabel\20completion_item�\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17�6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3�+\1\1\0X\2\1�+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1�\tbody\15lsp_expand�\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\27�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\18�-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\5\1B\1\1\1X\1\t�-\1\2\0B\1\1\2\15\0\1\0X\2\3�\18\1\0\0B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\1�\4�\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\1�\tjump\rjumpable\21select_prev_item\fvisible�\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\5�\tname\vsource\1\0\5\vbuffer\r[Buffer]\tpath\v[Path]\rnvim_lua\n[Lua]\fluasnip\14[Snippet]\rnvim_lsp\n[Lsp]\tmenu\b%s \vformat\vstring\tkind�\n\1\0\15\0@\0v6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0003\4\5\0005\5\6\0009\6\a\0005\b\v\0005\t\t\0003\n\b\0=\n\n\t=\t\f\b5\t\15\0009\n\r\0009\n\14\nB\n\1\2=\n\16\t9\n\r\0009\n\17\nB\n\1\2=\n\18\t9\n\r\0009\f\r\0009\f\19\f)\14��B\f\2\0025\r\20\0B\n\3\2=\n\21\t9\n\r\0009\f\r\0009\f\19\f)\14\1\0B\f\2\0025\r\22\0B\n\3\2=\n\23\t9\n\r\0009\f\r\0009\f\24\fB\f\1\0025\r\25\0B\n\3\2=\n\26\t9\n\27\0009\n\28\n=\n\29\t9\n\r\0005\f\31\0009\r\r\0009\r\30\rB\r\1\2=\r \f9\r\r\0009\r!\rB\r\1\2=\r\"\fB\n\2\2=\n#\t9\n\r\0009\n$\n5\f%\0B\n\2\2=\n&\t9\n\r\0003\f'\0005\r(\0B\n\3\2=\n)\t9\n\r\0003\f*\0005\r+\0B\n\3\2=\n,\t=\t\r\b5\t.\0005\n-\0=\n/\t3\n0\0=\n1\t=\t2\b4\t\6\0005\n3\0>\n\1\t5\n4\0>\n\2\t5\n5\0>\n\3\t5\n6\0>\n\4\t5\n7\0>\n\5\t=\t8\bB\6\2\0019\6\a\0009\0069\6'\b:\0005\t<\0004\n\3\0005\v;\0>\v\1\n=\n8\tB\6\3\0019\6\a\0009\0069\6'\b=\0005\t?\0004\n\3\0005\v>\0>\v\1\n=\n8\tB\6\3\0012\0\0�K\0\1\0\1\0\1\fsources\0\1\0\1\tname\vbuffer\6/\1\0\1\fsources\0\1\0\1\tname\fcmdline\6:\fcmdline\fsources\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\2\vfields\0\vformat\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\1\fconfirm\n<Esc>\6c\nclose\6i\1\0\2\6c\0\6i\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-k>\21select_prev_item\n<C-j>\1\0\n\t<CR>\0\n<C-j>\0\n<C-b>\0\f<S-Tab>\0\n<Tab>\0\n<Esc>\0\n<C-y>\0\14<C-Space>\0\n<C-f>\0\n<C-k>\0\21select_next_item\fmapping\fsnippet\1\0\4\fmapping\0\15formatting\0\fsources\0\fsnippet\0\vexpand\1\0\1\vexpand\0\0\nsetup\1\0\25\tFile\b\nValue\b\14Reference\b\tUnit\b\vFolder\b\rProperty\b\15EnumMember\b\vModule\t󱒌\18TypeParameter\b\14Interface\b\rOperator\b\nClass\b\nEvent\b\rVariable\b\vStruct\b\nField\t󰽐\rConstant\b\16Constructor\b\rFunction\t󰊕\vMethod\b\tText\t󰊄\nColor\b\fSnippet\b\fKeyword\b\tEnum\b\0\0\0\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-cursorline"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\15cursorword\ahl\1\0\1\14underline\2\1\0\3\ahl\0\venable\2\15min_length\3\3\15cursorline\1\0\2\15cursorword\0\15cursorline\0\1\0\3\venable\2\ftimeout\3�\a\vnumber\1\nsetup\20nvim-cursorline\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-hardline"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rhardline\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-hardline",
    url = "https://github.com/ojroques/nvim-hardline"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\3\0\0\14gitcommit\14gitrebase\29lastplace_ignore_buftype\1\0\3\30lastplace_ignore_filetype\0\25lastplace_open_folds\2\29lastplace_ignore_buftype\0\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\1\14highlight\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0+\1\2\0=\1\n\0K\0\1\0)skip_ts_context_commentstring_module\6g\bvim\26context_commentstring\vconfig\1\0\2\tscss\n// %s\bcss\r/* %s */\1\0\2\venable\2\vconfig\0\1\0\2\26context_commentstring\0\19enable_autocmd\1\nsetup\29ts_context_commentstring\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["oil.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\6\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\0016\0\r\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\1\tdesc\26Open parent directory\17<CMD>Oil<CR>\6-\6n\bset\vkeymap\bvim\17view_options\fkeymaps\6~\topts\1\0\1\nscope\btab\1\2\1\0\15actions.cd\topts\0\1\0\r\n<C-r>\20actions.refresh\ag.\26actions.toggle_hidden\ag?\22actions.show_help\agx\26actions.open_external\ags\24actions.change_sort\6~\0\t<CR>\19actions.select\6`\15actions.cd\6-\19actions.parent\n<C-c>\18actions.close\6_\21actions.open_cwd\n<C-p>\20actions.preview\ag\\\25actions.toggle_trash\fcolumns\1\0\4\17view_options\0\fcolumns\0\24use_default_keymaps\1\fkeymaps\0\1\3\0\0\ticon\tsize\nsetup\boil\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/oil.nvim",
    url = "https://github.com/stevearc/oil.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["render-markdown.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\vitalic\1\0\1\fenabled\2\tbold\1\0\1\fenabled\2\tcode\1\0\1\fenabled\2\fheading\1\0\4\tcode\0\fheading\0\vitalic\0\tbold\0\1\0\1\fenabled\2\nsetup\20render-markdown\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  ["snacks.nvim"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/snacks.nvim",
    url = "https://github.com/folke/snacks.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\3\0\1\v\0\18\0-6\1\0\0'\3\1\0B\1\2\0029\2\2\1\18\4\0\0B\2\2\2\18\5\2\0009\3\3\2B\3\2\0029\4\4\2\18\6\4\0009\4\5\4\18\t\2\0009\a\6\2\18\n\3\0B\a\3\0A\4\1\0029\5\a\4\14\0\5\0X\6\1�9\5\b\4\14\0\5\0X\6\4�6\6\t\0'\b\n\0B\6\2\1K\0\1\0006\6\v\0009\6\f\0069\6\r\6\18\b\5\0'\t\14\0B\6\3\0026\a\v\0009\a\f\a9\a\15\a'\t\16\0\18\n\6\0B\a\3\0016\a\t\0'\t\17\0\18\n\6\0&\t\n\tB\a\2\1K\0\1\0 📋 Copied relative path: \6+\vsetreg\a:.\16fnamemodify\afn\bvim#❌ No path available to copy.\nprint\rfilename\tpath\14get_index\14get_entry\fmanager\22get_selection_row\23get_current_picker\28telescope.actions.state\frequire�\a\1\0\b\0(\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\b\0005\4\6\0005\5\4\0003\6\3\0=\6\5\5=\5\a\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\19\0005\4\17\0005\5\16\0=\5\18\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\2B\0\2\0016\0\26\0009\0\27\0009\0\28\0005\1\29\0\18\2\0\0'\4\a\0'\5\30\0'\6\31\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5 \0'\6!\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\"\0'\6#\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5$\0'\6%\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5&\0'\6'\0\18\a\1\0B\2\5\1K\0\1\0\26:Telescope resume<CR>\15<Leader>fr\27:Telescope buffers<CR>\15<Leader>fb\31:Telescope grep_string<CR>\15<Leader>fc\29:Telescope live_grep<CR>\15<Leader>fg\30:Telescope find_files<CR>\15<Leader>ff\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\2\18sort_lastused\2\rsort_mru\2\roldfiles\1\0\1\rcwd_only\2\15find_files\1\0\3\fbuffers\0\15find_files\0\roldfiles\0\17find_command\1\0\1\17find_command\0\1\6\0\0\afd\v--type\6f\23--strip-cwd-prefix\a-H\rdefaults\1\0\2\fpickers\0\rdefaults\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\r--hidden\25file_ignore_patterns\1\a\0\0\n.git/\v.nuxt/\v.next/\18node_modules/\19pnpm-lock.yaml\20packer_compiled\rmappings\1\0\3\22vimgrep_arguments\0\25file_ignore_patterns\0\rmappings\0\6n\1\0\1\6n\0\ayp\1\0\1\ayp\0\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["text-case.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\6\0\14\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\0016\0\5\0009\0\6\0009\0\a\0'\2\f\0'\3\t\0'\4\n\0005\5\r\0B\0\5\1K\0\1\0\1\0\1\tdesc\14Telescope\6v\1\0\1\tdesc\14Telescope#<cmd>TextCaseOpenTelescope<CR>\bga.\6n\20nvim_set_keymap\bapi\bvim\19load_extension\14telescope\nsetup\rtextcase\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/text-case.nvim",
    url = "https://github.com/johmsalas/text-case.nvim"
  },
  ["tidy.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/opt/tidy.nvim",
    url = "https://github.com/mcauley-penney/tidy.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n�\1\0\1\2\0\a\2\0189\1\0\0\a\1\1\0X\1\6�6\1\2\0009\1\3\0019\1\4\1\24\1\0\1L\1\2\0X\1\b�9\1\0\0\a\1\5\0X\1\5�6\1\2\0009\1\3\0019\1\6\1\24\1\1\1L\1\2\0K\0\1\0\fcolumns\rvertical\nlines\6o\bvim\15horizontal\14direction����\3����\3��̙\19����\3�\2\0\0\t\0\r\0!6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0)\4\0\0'\5\4\0'\6\5\0'\a\6\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\a\0'\a\b\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\t\0'\a\n\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\v\0'\a\f\0\18\b\1\0B\2\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\1\0\1\fnoremap\2\24nvim_buf_set_keymap\bapi\bvim�\3\1\0\a\0\21\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0023\3\6\0=\3\a\2B\0\2\0016\0\b\0003\1\n\0=\1\t\0006\0\v\0009\0\f\0009\0\r\0\18\1\0\0'\3\14\0'\4\15\0'\5\16\0005\6\17\0B\1\5\0016\1\v\0009\1\18\1'\3\19\0B\1\2\0016\1\v\0009\1\18\1'\3\20\0B\1\2\1K\0\1\0/autocmd TermOpen * setlocal signcolumn=yes:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\1\0\1\fnoremap\2':ToggleTerm direction=vertical<CR>\f<C-S- >\6n\20nvim_set_keymap\bapi\bvim\0\25set_terminal_keymaps\a_G\tsize\0\15float_opts\1\0\1\vborder\vcurved\1\0\5\14direction\nfloat\tsize\0\15float_opts\0\20start_in_insert\2\17open_mapping\n<C- >\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-cutlass"] = {
    config = { "\27LJ\2\n�\1\0\0\b\0\f\0\0296\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\1\0B\2\5\1K\0\1\0\6D\6M\add\amm\6x\6d\6m\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-cutlass",
    url = "https://github.com/svermeulen/vim-cutlass"
  },
  ["vim-numbertoggle"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-numbertoggle",
    url = "https://github.com/jeffkreeftmeijer/vim-numbertoggle"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-yoink"] = {
    config = { "\27LJ\2\n�\3\0\0\b\0\19\0-6\0\0\0009\0\1\0009\0\2\0005\1\3\0006\2\0\0009\2\4\2)\3\1\0=\3\5\2\18\2\0\0'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1K\0\1\0\26<plug>(YoinkPaste_gP)\agP\26<plug>(YoinkPaste_gp)\agp\25<plug>(YoinkPaste_P)\6P\25<plug>(YoinkPaste_p)\6p&<plug>(YoinkPostPasteSwapForward)\n<C-p>#<plug>(YoinkPostPasteSwapBack)\n<C-n>\6n!yoinkIncludeDeleteOperations\6g\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-yoink",
    url = "https://github.com/svermeulen/vim-yoink"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cursorline
time([[Config for nvim-cursorline]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\15cursorword\ahl\1\0\1\14underline\2\1\0\3\ahl\0\venable\2\15min_length\3\3\15cursorline\1\0\2\15cursorword\0\15cursorline\0\1\0\3\venable\2\ftimeout\3�\a\vnumber\1\nsetup\20nvim-cursorline\frequire\0", "config", "nvim-cursorline")
time([[Config for nvim-cursorline]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\5\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\18\0=\3\19\2B\0\2\1K\0\1\0\19format_on_save\1\0\2\15timeout_ms\3�\3\15lsp_format\rfallback\21formatters_by_ft\1\0\2\19format_on_save\0\21formatters_by_ft\0\bvue\1\3\0\0\14prettierd\reslint_d\blua\1\2\0\0\vstylua\tjson\1\2\0\0\14prettierd\15typescript\1\3\0\0\14prettierd\reslint_d\15javascript\1\3\0\0\14prettierd\reslint_d\ago\1\0\6\blua\0\bvue\0\15javascript\0\tjson\0\ago\0\15typescript\0\1\3\0\0\14goimports\fgofumpt\nsetup\fconform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\1\2\0\a\2\0189\1\0\0\a\1\1\0X\1\6�6\1\2\0009\1\3\0019\1\4\1\24\1\0\1L\1\2\0X\1\b�9\1\0\0\a\1\5\0X\1\5�6\1\2\0009\1\3\0019\1\6\1\24\1\1\1L\1\2\0K\0\1\0\fcolumns\rvertical\nlines\6o\bvim\15horizontal\14direction����\3����\3��̙\19����\3�\2\0\0\t\0\r\0!6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0)\4\0\0'\5\4\0'\6\5\0'\a\6\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\a\0'\a\b\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\t\0'\a\n\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\v\0'\a\f\0\18\b\1\0B\2\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\1\0\1\fnoremap\2\24nvim_buf_set_keymap\bapi\bvim�\3\1\0\a\0\21\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0023\3\6\0=\3\a\2B\0\2\0016\0\b\0003\1\n\0=\1\t\0006\0\v\0009\0\f\0009\0\r\0\18\1\0\0'\3\14\0'\4\15\0'\5\16\0005\6\17\0B\1\5\0016\1\v\0009\1\18\1'\3\19\0B\1\2\0016\1\v\0009\1\18\1'\3\20\0B\1\2\1K\0\1\0/autocmd TermOpen * setlocal signcolumn=yes:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\1\0\1\fnoremap\2':ToggleTerm direction=vertical<CR>\f<C-S- >\6n\20nvim_set_keymap\bapi\bvim\0\25set_terminal_keymaps\a_G\tsize\0\15float_opts\1\0\1\vborder\vcurved\1\0\5\14direction\nfloat\tsize\0\15float_opts\0\20start_in_insert\2\17open_mapping\n<C- >\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n�\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\3\0\0\14gitcommit\14gitrebase\29lastplace_ignore_buftype\1\0\3\30lastplace_ignore_filetype\0\25lastplace_open_folds\2\29lastplace_ignore_buftype\0\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\b\0\a\0\v6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\17:LazyGit<CR>\15<Leader>gg\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\2\0\2\a\2\6\0/9\2\0\0009\2\1\2\6\2\2\0X\2\t�9\2\0\0019\2\1\2\a\2\2\0X\2\3�+\2\1\0L\2\2\0X\2\2�+\2\0\0L\2\2\0-\2\0\0009\2\3\2\18\5\0\0009\3\4\0B\3\2\0028\2\3\2-\3\0\0009\3\3\3\18\6\1\0009\4\4\1B\4\2\0028\3\4\3-\4\1\0009\4\5\0048\4\2\4\14\0\4\0X\5\1�)\4\0\0-\5\1\0009\5\5\0058\5\3\5\14\0\5\0X\6\1�)\5\0\0\5\4\5\0X\6\2�+\6\0\0L\6\2\0\0\5\4\0X\6\2�+\6\1\0X\a\1�+\6\2\0L\6\2\0\1�\0�\18kind_priority\rget_kind\23CompletionItemKind\rnvim_lsp\tname\vsource:\1\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0013\2\3\0002\0\0�L\2\2\0\0\blsp\14cmp.types\frequireE\0\2\4\0\2\0\n9\2\0\0009\2\1\0029\3\0\0019\3\1\3\0\2\3\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\nlabel\20completion_item�\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17�6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3�+\1\1\0X\2\1�+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1�\tbody\15lsp_expand�\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\27�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\18�-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\5\1B\1\1\1X\1\t�-\1\2\0B\1\1\2\15\0\1\0X\2\3�\18\1\0\0B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\1�\4�\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\1�\tjump\rjumpable\21select_prev_item\fvisible�\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\5�\tname\vsource\1\0\5\vbuffer\r[Buffer]\tpath\v[Path]\rnvim_lua\n[Lua]\fluasnip\14[Snippet]\rnvim_lsp\n[Lsp]\tmenu\b%s \vformat\vstring\tkind�\n\1\0\15\0@\0v6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0003\3\4\0003\4\5\0005\5\6\0009\6\a\0005\b\v\0005\t\t\0003\n\b\0=\n\n\t=\t\f\b5\t\15\0009\n\r\0009\n\14\nB\n\1\2=\n\16\t9\n\r\0009\n\17\nB\n\1\2=\n\18\t9\n\r\0009\f\r\0009\f\19\f)\14��B\f\2\0025\r\20\0B\n\3\2=\n\21\t9\n\r\0009\f\r\0009\f\19\f)\14\1\0B\f\2\0025\r\22\0B\n\3\2=\n\23\t9\n\r\0009\f\r\0009\f\24\fB\f\1\0025\r\25\0B\n\3\2=\n\26\t9\n\27\0009\n\28\n=\n\29\t9\n\r\0005\f\31\0009\r\r\0009\r\30\rB\r\1\2=\r \f9\r\r\0009\r!\rB\r\1\2=\r\"\fB\n\2\2=\n#\t9\n\r\0009\n$\n5\f%\0B\n\2\2=\n&\t9\n\r\0003\f'\0005\r(\0B\n\3\2=\n)\t9\n\r\0003\f*\0005\r+\0B\n\3\2=\n,\t=\t\r\b5\t.\0005\n-\0=\n/\t3\n0\0=\n1\t=\t2\b4\t\6\0005\n3\0>\n\1\t5\n4\0>\n\2\t5\n5\0>\n\3\t5\n6\0>\n\4\t5\n7\0>\n\5\t=\t8\bB\6\2\0019\6\a\0009\0069\6'\b:\0005\t<\0004\n\3\0005\v;\0>\v\1\n=\n8\tB\6\3\0019\6\a\0009\0069\6'\b=\0005\t?\0004\n\3\0005\v>\0>\v\1\n=\n8\tB\6\3\0012\0\0�K\0\1\0\1\0\1\fsources\0\1\0\1\tname\vbuffer\6/\1\0\1\fsources\0\1\0\1\tname\fcmdline\6:\fcmdline\fsources\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\2\vfields\0\vformat\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\1\fconfirm\n<Esc>\6c\nclose\6i\1\0\2\6c\0\6i\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-k>\21select_prev_item\n<C-j>\1\0\n\t<CR>\0\n<C-j>\0\n<C-b>\0\f<S-Tab>\0\n<Tab>\0\n<Esc>\0\n<C-y>\0\14<C-Space>\0\n<C-f>\0\n<C-k>\0\21select_next_item\fmapping\fsnippet\1\0\4\fmapping\0\15formatting\0\fsources\0\fsnippet\0\vexpand\1\0\1\vexpand\0\0\nsetup\1\0\25\tFile\b\nValue\b\14Reference\b\tUnit\b\vFolder\b\rProperty\b\15EnumMember\b\vModule\t󱒌\18TypeParameter\b\14Interface\b\rOperator\b\nClass\b\nEvent\b\rVariable\b\vStruct\b\nField\t󰽐\rConstant\b\16Constructor\b\rFunction\t󰊕\vMethod\b\tText\t󰊄\nColor\b\fSnippet\b\fKeyword\b\tEnum\b\0\0\0\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-cutlass
time([[Config for vim-cutlass]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\f\0\0296\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\1\0B\2\5\1K\0\1\0\6D\6M\add\amm\6x\6d\6m\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0", "config", "vim-cutlass")
time([[Config for vim-cutlass]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\nc\0\2\a\0\5\0\b6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\1K\0\1\0\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvim�\f\1\0\16\0008\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0025\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\t\0005\6\a\0005\a\6\0=\a\b\6=\6\n\5B\3\2\0019\3\5\0005\5\v\0=\2\f\5B\3\2\0015\3\14\0003\4\r\0=\4\15\0039\4\16\0016\6\17\0009\6\18\0069\6\19\0069\6\20\6B\6\1\0A\4\0\2=\4\21\0036\4\22\0\18\6\2\0B\4\2\4H\a\20�6\t\23\0006\v\0\0'\f\24\0\18\r\b\0&\f\r\fB\t\3\0036\v\17\0009\v\25\v'\r\26\0\18\14\3\0\15\0\t\0X\15\2�\f\15\n\0X\15\1�4\15\0\0B\v\4\0026\f\17\0009\f\18\f9\f\27\f<\v\b\fF\a\3\3R\a�\1276\4\17\0009\4\28\0049\4\29\0045\5\30\0\18\6\4\0'\b\31\0'\t \0'\n!\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t\"\0'\n#\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t$\0'\n%\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t&\0'\n'\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t(\0'\n)\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t*\0'\n+\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t,\0'\n-\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t.\0'\n/\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t0\0'\n1\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t2\0'\n3\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t4\0'\n5\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t6\0'\n7\0\18\v\5\0B\6\5\1K\0\1\0001:!prettier % --write; eslint % --fix<CR><CR>\15<leader>fp2:lua vim.lsp.buf.format({ async = true })<CR>\15<leader>lf):lua vim.diagnostic.setloclist()<CR>\15<leader>lq(:lua vim.diagnostic.goto_next()<CR>\a]d(:lua vim.diagnostic.goto_prev()<CR>\a[d):lua vim.diagnostic.open_float()<CR>\15<leader>ld&:lua vim.lsp.buf.references()<CR>\15<leader>gr':lua vim.lsp.buf.code_action()<CR>\15<leader>ca#:lua vim.lsp.util.rename()<CR>\15<leader>rn*:lua vim.lsp.buf.implementation()<CR>\15<leader>li!:lua vim.lsp.buf.hover()<CR>\15<leader>lh&:lua vim.lsp.buf.definition()<CR>\15<leader>gd\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\vconfig\nforce\20tbl_deep_extend\tlsp.\npcall\npairs\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\25default_capabilities\14on_attach\1\0\2\14on_attach\0\17capabilities\0\0\21ensure_installed\1\0\2\27automatic_installation\1\21ensure_installed\0\aui\1\0\1\aui\0\nicons\1\0\1\nicons\0\1\0\3\24package_uninstalled\n󰝦 \22package_installed\n󰄴 \20package_pending\n󰏦 \nsetup\nmason\1\a\0\0\vbashls\veslint\vjsonls\16tailwindcss\nts_ls\ngopls\17cmp_nvim_lsp\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: git-blame.nvim
time([[Config for git-blame.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitblame\frequire\0", "config", "git-blame.nvim")
time([[Config for git-blame.nvim]], false)
-- Config for: render-markdown.nvim
time([[Config for render-markdown.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\vitalic\1\0\1\fenabled\2\tbold\1\0\1\fenabled\2\tcode\1\0\1\fenabled\2\fheading\1\0\4\tcode\0\fheading\0\vitalic\0\tbold\0\1\0\1\fenabled\2\nsetup\20render-markdown\frequire\0", "config", "render-markdown.nvim")
time([[Config for render-markdown.nvim]], false)
-- Config for: oil.nvim
time([[Config for oil.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\6\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\0016\0\r\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\1\tdesc\26Open parent directory\17<CMD>Oil<CR>\6-\6n\bset\vkeymap\bvim\17view_options\fkeymaps\6~\topts\1\0\1\nscope\btab\1\2\1\0\15actions.cd\topts\0\1\0\r\n<C-r>\20actions.refresh\ag.\26actions.toggle_hidden\ag?\22actions.show_help\agx\26actions.open_external\ags\24actions.change_sort\6~\0\t<CR>\19actions.select\6`\15actions.cd\6-\19actions.parent\n<C-c>\18actions.close\6_\21actions.open_cwd\n<C-p>\20actions.preview\ag\\\25actions.toggle_trash\fcolumns\1\0\4\17view_options\0\fcolumns\0\24use_default_keymaps\1\fkeymaps\0\1\3\0\0\ticon\tsize\nsetup\boil\frequire\0", "config", "oil.nvim")
time([[Config for oil.nvim]], false)
-- Config for: avante.nvim
time([[Config for avante.nvim]], true)
try_loadstring("\27LJ\2\nu\0\4\f\0\6\1\0166\4\0\0009\4\1\4\18\6\3\0'\a\2\0005\b\3\0B\4\4\0026\5\0\0009\5\4\0059\5\5\5\18\a\0\0\23\b\0\1\18\t\2\0+\n\1\0\18\v\4\0B\5\6\1K\0\1\0\23nvim_buf_set_lines\bapi\1\0\1\nplain\2\6\n\nsplit\bvim\2�\4\1\0\6\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\17\0005\4\16\0=\4\18\3=\3\19\0023\3\20\0=\3\21\2B\0\2\1K\0\1\0\20replace_in_file\0\fwindows\ninput\1\0\1\ninput\0\1\0\2\vprefix\a> \vheight\3\n\14behaviour\1\0\2%auto_apply_diff_after_generation\1\26enable_token_counting\1\vrender\1\0\1\rmarkdown\2\14providers\vgemini\1\0\1\vgemini\0\23extra_request_body\1\0\2\15max_tokens\3� \16temperature\3\0\1\0\3\nmodel\21gemini-2.5-flash\23extra_request_body\0\ftimeout\3��\1\19disabled_tools\1\2\0\0\20replace_in_file\1\0\a\19disabled_tools\0\14providers\0\20replace_in_file\0\vrender\0\14behaviour\0\fwindows\0\rprovider\vgemini\nsetup\vavante\frequire\0", "config", "avante.nvim")
time([[Config for avante.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-hardline
time([[Config for nvim-hardline]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rhardline\frequire\0", "config", "nvim-hardline")
time([[Config for nvim-hardline]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\1\v\0\18\0-6\1\0\0'\3\1\0B\1\2\0029\2\2\1\18\4\0\0B\2\2\2\18\5\2\0009\3\3\2B\3\2\0029\4\4\2\18\6\4\0009\4\5\4\18\t\2\0009\a\6\2\18\n\3\0B\a\3\0A\4\1\0029\5\a\4\14\0\5\0X\6\1�9\5\b\4\14\0\5\0X\6\4�6\6\t\0'\b\n\0B\6\2\1K\0\1\0006\6\v\0009\6\f\0069\6\r\6\18\b\5\0'\t\14\0B\6\3\0026\a\v\0009\a\f\a9\a\15\a'\t\16\0\18\n\6\0B\a\3\0016\a\t\0'\t\17\0\18\n\6\0&\t\n\tB\a\2\1K\0\1\0 📋 Copied relative path: \6+\vsetreg\a:.\16fnamemodify\afn\bvim#❌ No path available to copy.\nprint\rfilename\tpath\14get_index\14get_entry\fmanager\22get_selection_row\23get_current_picker\28telescope.actions.state\frequire�\a\1\0\b\0(\0?6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\b\0005\4\6\0005\5\4\0003\6\3\0=\6\5\5=\5\a\4=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\19\0005\4\17\0005\5\16\0=\5\18\4=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\2B\0\2\0016\0\26\0009\0\27\0009\0\28\0005\1\29\0\18\2\0\0'\4\a\0'\5\30\0'\6\31\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5 \0'\6!\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\"\0'\6#\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5$\0'\6%\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5&\0'\6'\0\18\a\1\0B\2\5\1K\0\1\0\26:Telescope resume<CR>\15<Leader>fr\27:Telescope buffers<CR>\15<Leader>fb\31:Telescope grep_string<CR>\15<Leader>fc\29:Telescope live_grep<CR>\15<Leader>fg\30:Telescope find_files<CR>\15<Leader>ff\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\2\18sort_lastused\2\rsort_mru\2\roldfiles\1\0\1\rcwd_only\2\15find_files\1\0\3\fbuffers\0\15find_files\0\roldfiles\0\17find_command\1\0\1\17find_command\0\1\6\0\0\afd\v--type\6f\23--strip-cwd-prefix\a-H\rdefaults\1\0\2\fpickers\0\rdefaults\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\r--hidden\25file_ignore_patterns\1\a\0\0\n.git/\v.nuxt/\v.next/\18node_modules/\19pnpm-lock.yaml\20packer_compiled\rmappings\1\0\3\22vimgrep_arguments\0\25file_ignore_patterns\0\rmappings\0\6n\1\0\1\6n\0\ayp\1\0\1\ayp\0\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-yoink
time([[Config for vim-yoink]], true)
try_loadstring("\27LJ\2\n�\3\0\0\b\0\19\0-6\0\0\0009\0\1\0009\0\2\0005\1\3\0006\2\0\0009\2\4\2)\3\1\0=\3\5\2\18\2\0\0'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1K\0\1\0\26<plug>(YoinkPaste_gP)\agP\26<plug>(YoinkPaste_gp)\agp\25<plug>(YoinkPaste_P)\6P\25<plug>(YoinkPaste_p)\6p&<plug>(YoinkPostPasteSwapForward)\n<C-p>#<plug>(YoinkPostPasteSwapBack)\n<C-n>\6n!yoinkIncludeDeleteOperations\6g\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "config", "vim-yoink")
time([[Config for vim-yoink]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nt\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\1\14highlight\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\bvim\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\17:HopWord<CR>\15<Leader>ww\6n\20nvim_set_keymap\bapi\bvim\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: text-case.nvim
time([[Config for text-case.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\6\0\14\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\0016\0\5\0009\0\6\0009\0\a\0'\2\f\0'\3\t\0'\4\n\0005\5\r\0B\0\5\1K\0\1\0\1\0\1\tdesc\14Telescope\6v\1\0\1\tdesc\14Telescope#<cmd>TextCaseOpenTelescope<CR>\bga.\6n\20nvim_set_keymap\bapi\bvim\19load_extension\14telescope\nsetup\rtextcase\frequire\0", "config", "text-case.nvim")
time([[Config for text-case.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\fexclude\1\0\1\fexclude\0\rbuftypes\1\3\0\0\rterminal\rquickfix\14filetypes\1\0\2\rbuftypes\0\14filetypes\0\1\5\0\0\thelp\nalpha\flspinfo\vpacker\nsetup\bibl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-ts-context-commentstring
time([[Config for nvim-ts-context-commentstring]], true)
try_loadstring("\27LJ\2\n�\2\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0+\1\2\0=\1\n\0K\0\1\0)skip_ts_context_commentstring_module\6g\bvim\26context_commentstring\vconfig\1\0\2\tscss\n// %s\bcss\r/* %s */\1\0\2\venable\2\vconfig\0\1\0\2\26context_commentstring\0\19enable_autocmd\1\nsetup\29ts_context_commentstring\frequire\0", "config", "nvim-ts-context-commentstring")
time([[Config for nvim-ts-context-commentstring]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n�\22\0\0\t\0'\1F6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\2\5\0=\2\4\0019\1\2\0009\1\6\0014\2\b\0009\3\a\0'\5\b\0'\6\t\0'\a\n\0B\3\4\2>\3\1\0029\3\a\0'\5\v\0'\6\f\0'\a\r\0B\3\4\2>\3\2\0029\3\a\0'\5\14\0'\6\15\0'\a\16\0B\3\4\2>\3\3\0029\3\a\0'\5\17\0'\6\18\0'\a\19\0B\3\4\2>\3\4\0029\3\a\0'\5\20\0'\6\21\0'\a\22\0B\3\4\2>\3\5\0029\3\a\0'\5\23\0'\6\24\0'\a\25\0B\3\4\2>\3\6\0029\3\a\0'\5\26\0'\6\27\0'\a\28\0B\3\4\0?\3\0\0=\2\4\0016\1\0\0'\3\29\0B\1\2\0029\1\30\0019\3\31\0B\1\2\0016\1 \0009\1!\0019\1\"\0015\2#\0\18\3\1\0'\5$\0'\6%\0'\a&\0\18\b\2\0B\3\5\1K\0\1\0\15:Alpha<CR>\15<Leader>qq\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\vconfig\nsetup\nalpha\v:q<CR>\16 󰩈  Quit\6qE:cd $HOME/.config/nvim | :e lua/plugins.lua | wincmd k | pwd<CR>\18   Plugins\6p;:e $HOME/.config/nvim | :cd %:p:h | wincmd k | pwd<CR>\18   Options\6o\29:Telescope live_grep<CR>\23 󱩾  Search Text\6/\30:Telescope find_files<CR>\22 󰱽  Find Files\6f\28:Telescope oldfiles<CR>\18   Recents\6r\r:Oil<CR>\18   Explore\6-\vbutton\fbuttons\1\19\0\0S                                                                              _                                    ██████                                    o                                ████▒▒▒▒▒▒████                                w                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              \127                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            w                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              \127                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          \127                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          \127                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        �\1                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        k                        ██      ██      ████      ████                        S                                                                              S                                                                              \bval\vheader\fsection\27alpha.themes.dashboard\frequire\15����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'tidy.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
