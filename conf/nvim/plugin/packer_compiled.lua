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
local package_path_str = "/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/andriepu/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n³\22\0\0\t\0'\1F6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\2\5\0=\2\4\0019\1\2\0009\1\6\0014\2\b\0009\3\a\0'\5\b\0'\6\t\0'\a\n\0B\3\4\2>\3\1\0029\3\a\0'\5\v\0'\6\f\0'\a\r\0B\3\4\2>\3\2\0029\3\a\0'\5\14\0'\6\15\0'\a\16\0B\3\4\2>\3\3\0029\3\a\0'\5\17\0'\6\18\0'\a\19\0B\3\4\2>\3\4\0029\3\a\0'\5\20\0'\6\21\0'\a\22\0B\3\4\2>\3\5\0029\3\a\0'\5\23\0'\6\24\0'\a\25\0B\3\4\2>\3\6\0029\3\a\0'\5\26\0'\6\27\0'\a\28\0B\3\4\0?\3\0\0=\2\4\0016\1\0\0'\3\29\0B\1\2\0029\1\30\0019\3\31\0B\1\2\0016\1 \0009\1!\0019\1\"\0015\2#\0\18\3\1\0'\5$\0'\6%\0'\a&\0\18\b\2\0B\3\5\1K\0\1\0\15:Alpha<CR>\15<Leader>qq\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\vconfig\nsetup\nalpha\v:q<CR>\16 ó°©  Quit\6qE:cd $HOME/.config/nvim | :e lua/plugins.lua | wincmd k | pwd<CR>\18 î«¦  Plugins\6p;:e $HOME/.config/nvim | :cd %:p:h | wincmd k | pwd<CR>\18 ï¢  Options\6o\29:Telescope live_grep<CR>\23 ó±©¾  Search Text\6/\30:Telescope find_files<CR>\22 ó°±½  Find Files\6f\28:Telescope oldfiles<CR>\18 îª  Recents\6r\r:Oil<CR>\18 ï  Explore\6-\vbutton\fbuttons\1\19\0\0S                                                                              _                                    ââââââ                                    o                                ââââââââââââââ                                w                              ââââââââââââââââââ                              \127                            ââââââââââââââââââââââ                            w                          ââââââââââ    ââââââââ                              \127                          ââââââââ  ââââââââââ  ââââ                          \127                          ââââââââ  ââââââââââ  ââââ                          \127                        ââââââââââââ    ââââââââ    ââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââ  ââââââ  ââââââââ  ââââââ                        k                        ââ      ââ      ââââ      ââââ                        S                                                                              S                                                                              \bval\vheader\fsection\27alpha.themes.dashboard\frequire\15À\4\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
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
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\17:HopWord<CR>\15<Leader>ww\6n\20nvim_set_keymap\bapi\bvim\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n¢\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\fexclude\1\0\0\rbuftypes\1\3\0\0\rterminal\rquickfix\14filetypes\1\0\0\1\5\0\0\thelp\nalpha\flspinfo\vpacker\nsetup\bibl\frequire\0" },
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
    config = { "\27LJ\2\nc\0\2\a\0\5\0\b6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\1K\0\1\0\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimß\v\1\0\18\0007\0\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0025\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\t\0005\6\a\0005\a\6\0=\a\b\6=\6\n\5B\3\2\0019\3\5\0005\5\v\0=\2\f\5B\3\2\0015\3\14\0003\4\r\0=\4\15\0039\4\16\0016\6\17\0009\6\18\0069\6\19\0069\6\20\6B\6\1\0A\4\0\2=\4\21\0036\4\22\0\18\6\2\0B\4\2\4H\a\286\t\23\0006\v\0\0'\f\24\0\18\r\b\0&\f\r\fB\t\3\3\15\0\t\0X\v\r6\v\0\0'\r\25\0B\v\2\0028\v\b\v9\v\5\v6\r\17\0009\r\26\r'\15\27\0\18\16\n\0\18\17\3\0B\r\4\0A\v\0\1X\v\a6\v\0\0'\r\25\0B\v\2\0028\v\b\v9\v\5\v\18\r\3\0B\v\2\1F\a\3\3R\aâ\1276\4\17\0009\4\28\0049\4\29\0045\5\30\0\18\6\4\0'\b\31\0'\t \0'\n!\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t\"\0'\n#\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t$\0'\n%\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t&\0'\n'\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t(\0'\n)\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t*\0'\n+\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t \0'\n,\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t-\0'\n.\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t/\0'\n0\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t1\0'\n2\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t3\0'\n4\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t5\0'\n6\0\18\v\5\0B\6\5\1K\0\1\0001:!prettier % --write; eslint % --fix<CR><CR>\15<leader>fp&:lua vim.lsp.buf.formatting()<CR>\15<leader>lf):lua vim.diagnostic.setloclist()<CR>\15<leader>lq(:lua vim.diagnostic.goto_next()<CR>\a]d(:lua vim.diagnostic.goto_prev()<CR>\a[d):lua vim.diagnostic.open_float()<CR>&:lua vim.lsp.buf.references()<CR>\15<leader>gr':lua vim.lsp.buf.code_action()<CR>\15<leader>ca#:lua vim.lsp.util.rename()<CR>\15<leader>rn*:lua vim.lsp.buf.implementation()<CR>\15<leader>li!:lua vim.lsp.buf.hover()<CR>\15<leader>lh&:lua vim.lsp.buf.definition()<CR>\15<leader>ld\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\nforce\20tbl_deep_extend\14lspconfig\tlsp.\npcall\npairs\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\25default_capabilities\14on_attach\1\0\0\0\21ensure_installed\1\0\0\aui\1\0\0\nicons\1\0\0\1\0\3\20package_pending\nó°¦ \24package_uninstalled\nó°¦ \22package_installed\nó°´ \nsetup\nmason\1\a\0\0\vbashls\veslint\vjsonls\16tailwindcss\nvolar\rtsserver\17cmp_nvim_lsp\20mason-lspconfig\frequire\0" },
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
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\176\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3+\1\1\0X\2\1+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expandî\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4-\1\0\0009\1\1\1B\1\1\1X\1\27-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4-\1\1\0009\1\3\1B\1\1\1X\1\18-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4-\1\1\0009\1\5\1B\1\1\1X\1\t-\1\2\0B\1\1\2\15\0\1\0X\2\3\18\1\0\0B\1\1\1X\1\2\18\1\0\0B\1\1\1K\0\1\0\0À\1À\2À\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisible\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4-\1\0\0009\1\1\1B\1\1\1X\1\r-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2\18\1\0\0B\1\1\1K\0\1\0\0À\1À\tjump\rjumpable\21select_prev_item\fvisible¸\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\3À\tname\vsource\1\0\5\rnvim_lua\n[Lua]\tpath\v[Path]\rnvim_lsp\n[Lsp]\fluasnip\14[Snippet]\vbuffer\r[Buffer]\tmenu\b%s \vformat\vstring\tkindÐ\t\1\0\r\0>\0t6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0005\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\bB\b\1\2=\b\14\a9\b\v\0009\b\15\bB\b\1\2=\b\16\a9\b\v\0009\n\v\0009\n\17\n)\fÿÿB\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0009\n\v\0009\n\17\n)\f\1\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0009\n\v\0009\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\25\0009\b\26\b=\b\27\a9\b\v\0005\n\29\0009\v\v\0009\v\28\vB\v\1\2=\v\30\n9\v\v\0009\v\31\vB\v\1\2=\v \nB\b\2\2=\b!\a9\b\v\0009\b\"\b5\n#\0B\b\2\2=\b$\a9\b\v\0003\n%\0005\v&\0B\b\3\2=\b'\a9\b\v\0003\n(\0005\v)\0B\b\3\2=\b*\a=\a\v\0065\a,\0005\b+\0=\b-\a3\b.\0=\b/\a=\a0\0064\a\6\0005\b1\0>\b\1\a5\b2\0>\b\2\a5\b3\0>\b\3\a5\b4\0>\b\4\a5\b5\0>\b\5\a=\a6\6B\4\2\0019\4\5\0009\0047\4'\0068\0005\a:\0004\b\3\0005\t9\0>\t\1\b=\b6\aB\4\3\0019\4\5\0009\0047\4'\6;\0005\a=\0004\b\3\0005\t<\0>\t\1\b=\b6\aB\4\3\0012\0\0K\0\1\0\1\0\0\1\0\1\tname\vbuffer\6/\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\fsources\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\1\fconfirm\n<Esc>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-k>\21select_prev_item\n<C-j>\1\0\0\21select_next_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tFile\bî©»\tUnit\bî\14Reference\bï\rProperty\bï­\vFolder\bîª\vModule\tó±\18TypeParameter\bî¨\14Interface\bï¨\rOperator\bî­¤\nClass\bî­\nEvent\bï§\rVariable\bîª\vStruct\bï³\nField\tó°½\rConstant\bî­\16Constructor\bï¥\15EnumMember\bï\rFunction\tó°\vMethod\bîª\tText\tó°\nColor\bî­\fSnippet\bï\fKeyword\bî­¾\tEnum\bï\nValue\bï·\0\fluasnip\bcmp\frequire\0" },
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
  ["nvim-hardline"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rhardline\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-hardline",
    url = "https://github.com/ojroques/nvim-hardline"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\nÍ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\3\0\0\14gitcommit\14gitrebase\29lastplace_ignore_buftype\1\0\1\25lastplace_open_folds\2\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÕ\6\0\0\r\0#\0I6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\0014\2\5\0005\3\a\0>\3\1\0025\3\b\0>\3\2\0025\3\t\0>\3\3\0025\3\n\0>\3\4\0026\3\v\0\18\5\2\0B\3\2\4X\6\n6\b\0\0009\b\f\b9\b\r\b9\n\14\a5\v\15\0009\f\14\a=\f\16\v9\f\17\a=\f\17\vB\b\3\1E\6\3\3R\6ô\1275\3\20\0005\4\18\0=\2\19\4=\4\21\0035\4\22\0=\4\23\0036\4\0\0009\4\24\0049\4\25\4\18\6\3\0B\4\2\0016\4\0\0009\4\26\0049\4\27\0046\5\0\0009\5\26\0059\5\29\0056\a\0\0009\a\26\a9\a\27\a9\a\30\a5\b\31\0B\5\3\2=\5\28\0046\4\0\0009\4\26\0049\4\27\0046\5\0\0009\5\26\0059\5\29\0056\a\0\0009\a\26\a9\a\27\a9\a!\a5\b\"\0B\5\3\2=\5 \4K\0\1\0\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\blsp\vconfig\15diagnostic\nfloat\1\0\6\14focusable\1\vprefix\5\vheader\5\vsource\valways\vborder\frounded\nstyle\fminimal\nsigns\1\0\3\18severity_sort\2\14underline\1\21update_in_insert\2\vactive\1\0\0\ttext\vtexthl\1\0\1\nnumhl\5\tname\16sign_define\afn\vipairs\1\0\2\ttext\tï \tname\23DiagnosticSignInfo\1\0\2\ttext\tï \tname\23DiagnosticSignHint\1\0\2\ttext\tï± \tname\23DiagnosticSignWarn\1\0\2\ttext\tï \tname\24DiagnosticSignError\20:LspRestart<CR>\17<Leader>lspr\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\në\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0+\1\2\0=\1\n\0K\0\1\0)skip_ts_context_commentstring_module\6g\bvim\26context_commentstring\vconfig\1\0\2\tscss\n// %s\bcss\r/* %s */\1\0\1\venable\2\1\0\1\19enable_autocmd\1\nsetup\29ts_context_commentstring\frequire\0" },
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
    config = { "\27LJ\2\n\4\0\0\6\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\0016\0\r\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\1\tdesc\26Open parent directory\17<CMD>Oil<CR>\6-\6n\bset\vkeymap\bvim\17view_options\fkeymaps\6~\topts\1\0\1\nscope\btab\1\2\0\0\15actions.cd\1\0\f\6-\19actions.parent\ag.\26actions.toggle_hidden\6_\21actions.open_cwd\n<C-r>\20actions.refresh\t<CR>\19actions.select\ags\24actions.change_sort\agx\26actions.open_external\ag?\22actions.show_help\n<C-p>\20actions.preview\6`\15actions.cd\n<C-c>\18actions.close\ag\\\25actions.toggle_trash\fcolumns\1\0\1\24use_default_keymaps\1\1\3\0\0\ticon\tsize\nsetup\boil\frequire\0" },
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
  ["specs.nvim"] = {
    config = { "\27LJ\2\n®\3\0\0\b\0\18\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0005\1\v\0\18\2\0\0'\4\f\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\f\0'\6\15\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\16\0'\6\17\0\18\a\1\0B\2\5\1K\0\1\0,N:lua require(\"specs\").show_specs()<CR>\6N,n:lua require(\"specs\").show_specs()<CR>::nohlsearch<CR>:lua require(\"specs\").show_specs()<CR>\20<Leader><Space>\6n\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\npopup\nfader\16pulse_fader\1\0\2\vinc_ms\3\n\nwidth\3\25\1\0\2\rmin_jump\3\30\15show_jumps\2\nsetup\nspecs\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n§\6\0\0\b\0#\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\0016\0\20\0009\0\21\0009\0\22\0005\1\23\0\18\2\0\0'\4\24\0'\5\25\0'\6\26\0\18\a\1\0B\2\5\1\18\2\0\0'\4\24\0'\5\27\0'\6\28\0\18\a\1\0B\2\5\1\18\2\0\0'\4\24\0'\5\29\0'\6\30\0\18\a\1\0B\2\5\1\18\2\0\0'\4\24\0'\5\31\0'\6 \0\18\a\1\0B\2\5\1\18\2\0\0'\4\24\0'\5!\0'\6\"\0\18\a\1\0B\2\5\1K\0\1\0\26:Telescope resume<CR>\15<Leader>fr\27:Telescope buffers<CR>\15<Leader>fb\31:Telescope grep_string<CR>\15<Leader>fc\29:Telescope live_grep<CR>\15<Leader>fg\30:Telescope find_files<CR>\15<Leader>ff\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\2\18sort_lastused\2\rsort_mru\2\roldfiles\1\0\1\rcwd_only\2\15find_files\1\0\0\17find_command\1\0\0\1\6\0\0\afd\v--type\6f\23--strip-cwd-prefix\a-H\rdefaults\1\0\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\r--hidden\25file_ignore_patterns\1\0\0\1\4\0\0\n.git/\19pnpm-lock.yaml\20packer_compiled\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["text-case.nvim"] = {
    config = { "\27LJ\2\n\2\0\0\6\0\14\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\0016\0\5\0009\0\6\0009\0\a\0'\2\f\0'\3\t\0'\4\n\0005\5\r\0B\0\5\1K\0\1\0\1\0\1\tdesc\14Telescope\6v\1\0\1\tdesc\14Telescope#<cmd>TextCaseOpenTelescope<CR>\bga.\6n\20nvim_set_keymap\bapi\bvim\19load_extension\14telescope\nsetup\rtextcase\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/text-case.nvim",
    url = "https://github.com/johmsalas/text-case.nvim"
  },
  ["tidy.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/opt/tidy.nvim",
    url = "https://github.com/McAuleyPenney/tidy.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n\1\0\1\2\0\a\2\0189\1\0\0\a\1\1\0X\1\66\1\2\0009\1\3\0019\1\4\1\24\1\0\1L\1\2\0X\1\b9\1\0\0\a\1\5\0X\1\56\1\2\0009\1\3\0019\1\6\1\24\1\1\1L\1\2\0K\0\1\0\fcolumns\rvertical\nlines\6o\bvim\15horizontal\14directionÙÇÂë\3×Çþ\3µæÌ\19³æþ\3\2\0\0\t\0\r\0!6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0)\4\0\0'\5\4\0'\6\5\0'\a\6\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\a\0'\a\b\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\t\0'\a\n\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\v\0'\a\f\0\18\b\1\0B\2\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\1\0\1\fnoremap\2\24nvim_buf_set_keymap\bapi\bvimÄ\3\1\0\a\0\21\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0023\3\6\0=\3\a\2B\0\2\0016\0\b\0003\1\n\0=\1\t\0006\0\v\0009\0\f\0009\0\r\0\18\1\0\0'\3\14\0'\4\15\0'\5\16\0005\6\17\0B\1\5\0016\1\v\0009\1\18\1'\3\19\0B\1\2\0016\1\v\0009\1\18\1'\3\20\0B\1\2\1K\0\1\0/autocmd TermOpen * setlocal signcolumn=yes:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\1\0\1\fnoremap\2':ToggleTerm direction=vertical<CR>\f<C-S- >\6n\20nvim_set_keymap\bapi\bvim\0\25set_terminal_keymaps\a_G\tsize\0\15float_opts\1\0\1\vborder\vcurved\1\0\3\17open_mapping\n<C- >\20start_in_insert\2\14direction\nfloat\nsetup\15toggleterm\frequire\0" },
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
    config = { "\27LJ\2\n¹\1\0\0\b\0\f\0\0296\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\1\0B\2\5\1K\0\1\0\6D\6M\add\amm\6x\6d\6m\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0" },
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
    config = { "\27LJ\2\n¬\3\0\0\b\0\19\0-6\0\0\0009\0\1\0009\0\2\0005\1\3\0006\2\0\0009\2\4\2)\3\1\0=\3\5\2\18\2\0\0'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1K\0\1\0\26<plug>(YoinkPaste_gP)\agP\26<plug>(YoinkPaste_gp)\agp\25<plug>(YoinkPaste_P)\6P\25<plug>(YoinkPaste_p)\6p&<plug>(YoinkPostPasteSwapForward)\n<C-p>#<plug>(YoinkPostPasteSwapBack)\n<C-n>\6n!yoinkIncludeDeleteOperations\6g\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\0" },
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
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n\1\0\1\2\0\a\2\0189\1\0\0\a\1\1\0X\1\66\1\2\0009\1\3\0019\1\4\1\24\1\0\1L\1\2\0X\1\b9\1\0\0\a\1\5\0X\1\56\1\2\0009\1\3\0019\1\6\1\24\1\1\1L\1\2\0K\0\1\0\fcolumns\rvertical\nlines\6o\bvim\15horizontal\14directionÙÇÂë\3×Çþ\3µæÌ\19³æþ\3\2\0\0\t\0\r\0!6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0)\4\0\0'\5\4\0'\6\5\0'\a\6\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\a\0'\a\b\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\t\0'\a\n\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\v\0'\a\f\0\18\b\1\0B\2\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\1\0\1\fnoremap\2\24nvim_buf_set_keymap\bapi\bvimÄ\3\1\0\a\0\21\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0023\3\6\0=\3\a\2B\0\2\0016\0\b\0003\1\n\0=\1\t\0006\0\v\0009\0\f\0009\0\r\0\18\1\0\0'\3\14\0'\4\15\0'\5\16\0005\6\17\0B\1\5\0016\1\v\0009\1\18\1'\3\19\0B\1\2\0016\1\v\0009\1\18\1'\3\20\0B\1\2\1K\0\1\0/autocmd TermOpen * setlocal signcolumn=yes:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\1\0\1\fnoremap\2':ToggleTerm direction=vertical<CR>\f<C-S- >\6n\20nvim_set_keymap\bapi\bvim\0\25set_terminal_keymaps\a_G\tsize\0\15float_opts\1\0\1\vborder\vcurved\1\0\3\17open_mapping\n<C- >\20start_in_insert\2\14direction\nfloat\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\176\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3+\1\1\0X\2\1+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expandî\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4-\1\0\0009\1\1\1B\1\1\1X\1\27-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4-\1\1\0009\1\3\1B\1\1\1X\1\18-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4-\1\1\0009\1\5\1B\1\1\1X\1\t-\1\2\0B\1\1\2\15\0\1\0X\2\3\18\1\0\0B\1\1\1X\1\2\18\1\0\0B\1\1\1K\0\1\0\0À\1À\2À\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisible\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4-\1\0\0009\1\1\1B\1\1\1X\1\r-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2\18\1\0\0B\1\1\1K\0\1\0\0À\1À\tjump\rjumpable\21select_prev_item\fvisible¸\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\3À\tname\vsource\1\0\5\rnvim_lua\n[Lua]\tpath\v[Path]\rnvim_lsp\n[Lsp]\fluasnip\14[Snippet]\vbuffer\r[Buffer]\tmenu\b%s \vformat\vstring\tkindÐ\t\1\0\r\0>\0t6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0005\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\bB\b\1\2=\b\14\a9\b\v\0009\b\15\bB\b\1\2=\b\16\a9\b\v\0009\n\v\0009\n\17\n)\fÿÿB\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0009\n\v\0009\n\17\n)\f\1\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0009\n\v\0009\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\25\0009\b\26\b=\b\27\a9\b\v\0005\n\29\0009\v\v\0009\v\28\vB\v\1\2=\v\30\n9\v\v\0009\v\31\vB\v\1\2=\v \nB\b\2\2=\b!\a9\b\v\0009\b\"\b5\n#\0B\b\2\2=\b$\a9\b\v\0003\n%\0005\v&\0B\b\3\2=\b'\a9\b\v\0003\n(\0005\v)\0B\b\3\2=\b*\a=\a\v\0065\a,\0005\b+\0=\b-\a3\b.\0=\b/\a=\a0\0064\a\6\0005\b1\0>\b\1\a5\b2\0>\b\2\a5\b3\0>\b\3\a5\b4\0>\b\4\a5\b5\0>\b\5\a=\a6\6B\4\2\0019\4\5\0009\0047\4'\0068\0005\a:\0004\b\3\0005\t9\0>\t\1\b=\b6\aB\4\3\0019\4\5\0009\0047\4'\6;\0005\a=\0004\b\3\0005\t<\0>\t\1\b=\b6\aB\4\3\0012\0\0K\0\1\0\1\0\0\1\0\1\tname\vbuffer\6/\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\fsources\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\1\fconfirm\n<Esc>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-k>\21select_prev_item\n<C-j>\1\0\0\21select_next_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tFile\bî©»\tUnit\bî\14Reference\bï\rProperty\bï­\vFolder\bîª\vModule\tó±\18TypeParameter\bî¨\14Interface\bï¨\rOperator\bî­¤\nClass\bî­\nEvent\bï§\rVariable\bîª\vStruct\bï³\nField\tó°½\rConstant\bî­\16Constructor\bï¥\15EnumMember\bï\rFunction\tó°\vMethod\bîª\tText\tó°\nColor\bî­\fSnippet\bï\fKeyword\bî­¾\tEnum\bï\nValue\bï·\0\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: oil.nvim
time([[Config for oil.nvim]], true)
try_loadstring("\27LJ\2\n\4\0\0\6\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0005\5\b\0=\5\t\4=\4\n\3=\3\v\0024\3\0\0=\3\f\2B\0\2\0016\0\r\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\1\tdesc\26Open parent directory\17<CMD>Oil<CR>\6-\6n\bset\vkeymap\bvim\17view_options\fkeymaps\6~\topts\1\0\1\nscope\btab\1\2\0\0\15actions.cd\1\0\f\6-\19actions.parent\ag.\26actions.toggle_hidden\6_\21actions.open_cwd\n<C-r>\20actions.refresh\t<CR>\19actions.select\ags\24actions.change_sort\agx\26actions.open_external\ag?\22actions.show_help\n<C-p>\20actions.preview\6`\15actions.cd\n<C-c>\18actions.close\ag\\\25actions.toggle_trash\fcolumns\1\0\1\24use_default_keymaps\1\1\3\0\0\ticon\tsize\nsetup\boil\frequire\0", "config", "oil.nvim")
time([[Config for oil.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\17:HopWord<CR>\15<Leader>ww\6n\20nvim_set_keymap\bapi\bvim\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: vim-cutlass
time([[Config for vim-cutlass]], true)
try_loadstring("\27LJ\2\n¹\1\0\0\b\0\f\0\0296\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\1\0B\2\5\1K\0\1\0\6D\6M\add\amm\6x\6d\6m\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0", "config", "vim-cutlass")
time([[Config for vim-cutlass]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n¢\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\fexclude\1\0\0\rbuftypes\1\3\0\0\rterminal\rquickfix\14filetypes\1\0\0\1\5\0\0\thelp\nalpha\flspinfo\vpacker\nsetup\bibl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-hardline
time([[Config for nvim-hardline]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rhardline\frequire\0", "config", "nvim-hardline")
time([[Config for nvim-hardline]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\b\0\a\0\v6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\17:LazyGit<CR>\15<Leader>gg\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n³\22\0\0\t\0'\1F6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\2\5\0=\2\4\0019\1\2\0009\1\6\0014\2\b\0009\3\a\0'\5\b\0'\6\t\0'\a\n\0B\3\4\2>\3\1\0029\3\a\0'\5\v\0'\6\f\0'\a\r\0B\3\4\2>\3\2\0029\3\a\0'\5\14\0'\6\15\0'\a\16\0B\3\4\2>\3\3\0029\3\a\0'\5\17\0'\6\18\0'\a\19\0B\3\4\2>\3\4\0029\3\a\0'\5\20\0'\6\21\0'\a\22\0B\3\4\2>\3\5\0029\3\a\0'\5\23\0'\6\24\0'\a\25\0B\3\4\2>\3\6\0029\3\a\0'\5\26\0'\6\27\0'\a\28\0B\3\4\0?\3\0\0=\2\4\0016\1\0\0'\3\29\0B\1\2\0029\1\30\0019\3\31\0B\1\2\0016\1 \0009\1!\0019\1\"\0015\2#\0\18\3\1\0'\5$\0'\6%\0'\a&\0\18\b\2\0B\3\5\1K\0\1\0\15:Alpha<CR>\15<Leader>qq\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\vconfig\nsetup\nalpha\v:q<CR>\16 ó°©  Quit\6qE:cd $HOME/.config/nvim | :e lua/plugins.lua | wincmd k | pwd<CR>\18 î«¦  Plugins\6p;:e $HOME/.config/nvim | :cd %:p:h | wincmd k | pwd<CR>\18 ï¢  Options\6o\29:Telescope live_grep<CR>\23 ó±©¾  Search Text\6/\30:Telescope find_files<CR>\22 ó°±½  Find Files\6f\28:Telescope oldfiles<CR>\18 îª  Recents\6r\r:Oil<CR>\18 ï  Explore\6-\vbutton\fbuttons\1\19\0\0S                                                                              _                                    ââââââ                                    o                                ââââââââââââââ                                w                              ââââââââââââââââââ                              \127                            ââââââââââââââââââââââ                            w                          ââââââââââ    ââââââââ                              \127                          ââââââââ  ââââââââââ  ââââ                          \127                          ââââââââ  ââââââââââ  ââââ                          \127                        ââââââââââââ    ââââââââ    ââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââââââââââââââââââââââââââââ                        \1                        ââââ  ââââââ  ââââââââ  ââââââ                        k                        ââ      ââ      ââââ      ââââ                        S                                                                              S                                                                              \bval\vheader\fsection\27alpha.themes.dashboard\frequire\15À\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: vim-yoink
time([[Config for vim-yoink]], true)
try_loadstring("\27LJ\2\n¬\3\0\0\b\0\19\0-6\0\0\0009\0\1\0009\0\2\0005\1\3\0006\2\0\0009\2\4\2)\3\1\0=\3\5\2\18\2\0\0'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1K\0\1\0\26<plug>(YoinkPaste_gP)\agP\26<plug>(YoinkPaste_gp)\agp\25<plug>(YoinkPaste_P)\6P\25<plug>(YoinkPaste_p)\6p&<plug>(YoinkPostPasteSwapForward)\n<C-p>#<plug>(YoinkPostPasteSwapBack)\n<C-n>\6n!yoinkIncludeDeleteOperations\6g\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "config", "vim-yoink")
time([[Config for vim-yoink]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\nc\0\2\a\0\5\0\b6\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0B\2\4\1K\0\1\0\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\bapi\bvimß\v\1\0\18\0007\0\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0025\2\3\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0035\5\t\0005\6\a\0005\a\6\0=\a\b\6=\6\n\5B\3\2\0019\3\5\0005\5\v\0=\2\f\5B\3\2\0015\3\14\0003\4\r\0=\4\15\0039\4\16\0016\6\17\0009\6\18\0069\6\19\0069\6\20\6B\6\1\0A\4\0\2=\4\21\0036\4\22\0\18\6\2\0B\4\2\4H\a\286\t\23\0006\v\0\0'\f\24\0\18\r\b\0&\f\r\fB\t\3\3\15\0\t\0X\v\r6\v\0\0'\r\25\0B\v\2\0028\v\b\v9\v\5\v6\r\17\0009\r\26\r'\15\27\0\18\16\n\0\18\17\3\0B\r\4\0A\v\0\1X\v\a6\v\0\0'\r\25\0B\v\2\0028\v\b\v9\v\5\v\18\r\3\0B\v\2\1F\a\3\3R\aâ\1276\4\17\0009\4\28\0049\4\29\0045\5\30\0\18\6\4\0'\b\31\0'\t \0'\n!\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t\"\0'\n#\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t$\0'\n%\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t&\0'\n'\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t(\0'\n)\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t*\0'\n+\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t \0'\n,\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t-\0'\n.\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t/\0'\n0\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t1\0'\n2\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t3\0'\n4\0\18\v\5\0B\6\5\1\18\6\4\0'\b\31\0'\t5\0'\n6\0\18\v\5\0B\6\5\1K\0\1\0001:!prettier % --write; eslint % --fix<CR><CR>\15<leader>fp&:lua vim.lsp.buf.formatting()<CR>\15<leader>lf):lua vim.diagnostic.setloclist()<CR>\15<leader>lq(:lua vim.diagnostic.goto_next()<CR>\a]d(:lua vim.diagnostic.goto_prev()<CR>\a[d):lua vim.diagnostic.open_float()<CR>&:lua vim.lsp.buf.references()<CR>\15<leader>gr':lua vim.lsp.buf.code_action()<CR>\15<leader>ca#:lua vim.lsp.util.rename()<CR>\15<leader>rn*:lua vim.lsp.buf.implementation()<CR>\15<leader>li!:lua vim.lsp.buf.hover()<CR>\15<leader>lh&:lua vim.lsp.buf.definition()<CR>\15<leader>ld\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\nforce\20tbl_deep_extend\14lspconfig\tlsp.\npcall\npairs\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\25default_capabilities\14on_attach\1\0\0\0\21ensure_installed\1\0\0\aui\1\0\0\nicons\1\0\0\1\0\3\20package_pending\nó°¦ \24package_uninstalled\nó°¦ \22package_installed\nó°´ \nsetup\nmason\1\a\0\0\vbashls\veslint\vjsonls\16tailwindcss\nvolar\rtsserver\17cmp_nvim_lsp\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÕ\6\0\0\r\0#\0I6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\0014\2\5\0005\3\a\0>\3\1\0025\3\b\0>\3\2\0025\3\t\0>\3\3\0025\3\n\0>\3\4\0026\3\v\0\18\5\2\0B\3\2\4X\6\n6\b\0\0009\b\f\b9\b\r\b9\n\14\a5\v\15\0009\f\14\a=\f\16\v9\f\17\a=\f\17\vB\b\3\1E\6\3\3R\6ô\1275\3\20\0005\4\18\0=\2\19\4=\4\21\0035\4\22\0=\4\23\0036\4\0\0009\4\24\0049\4\25\4\18\6\3\0B\4\2\0016\4\0\0009\4\26\0049\4\27\0046\5\0\0009\5\26\0059\5\29\0056\a\0\0009\a\26\a9\a\27\a9\a\30\a5\b\31\0B\5\3\2=\5\28\0046\4\0\0009\4\26\0049\4\27\0046\5\0\0009\5\26\0059\5\29\0056\a\0\0009\a\26\a9\a\27\a9\a!\a5\b\"\0B\5\3\2=\5 \4K\0\1\0\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\blsp\vconfig\15diagnostic\nfloat\1\0\6\14focusable\1\vprefix\5\vheader\5\vsource\valways\vborder\frounded\nstyle\fminimal\nsigns\1\0\3\18severity_sort\2\14underline\1\21update_in_insert\2\vactive\1\0\0\ttext\vtexthl\1\0\1\nnumhl\5\tname\16sign_define\afn\vipairs\1\0\2\ttext\tï \tname\23DiagnosticSignInfo\1\0\2\ttext\tï \tname\23DiagnosticSignHint\1\0\2\ttext\tï± \tname\23DiagnosticSignWarn\1\0\2\ttext\tï \tname\24DiagnosticSignError\20:LspRestart<CR>\17<Leader>lspr\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\nÍ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\3\0\0\14gitcommit\14gitrebase\29lastplace_ignore_buftype\1\0\1\25lastplace_open_folds\2\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: specs.nvim
time([[Config for specs.nvim]], true)
try_loadstring("\27LJ\2\n®\3\0\0\b\0\18\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0005\1\v\0\18\2\0\0'\4\f\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\f\0'\6\15\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\16\0'\6\17\0\18\a\1\0B\2\5\1K\0\1\0,N:lua require(\"specs\").show_specs()<CR>\6N,n:lua require(\"specs\").show_specs()<CR>::nohlsearch<CR>:lua require(\"specs\").show_specs()<CR>\20<Leader><Space>\6n\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\npopup\nfader\16pulse_fader\1\0\2\vinc_ms\3\n\nwidth\3\25\1\0\2\rmin_jump\3\30\15show_jumps\2\nsetup\nspecs\frequire\0", "config", "specs.nvim")
time([[Config for specs.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: text-case.nvim
time([[Config for text-case.nvim]], true)
try_loadstring("\27LJ\2\n\2\0\0\6\0\14\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\0016\0\5\0009\0\6\0009\0\a\0'\2\b\0'\3\t\0'\4\n\0005\5\v\0B\0\5\0016\0\5\0009\0\6\0009\0\a\0'\2\f\0'\3\t\0'\4\n\0005\5\r\0B\0\5\1K\0\1\0\1\0\1\tdesc\14Telescope\6v\1\0\1\tdesc\14Telescope#<cmd>TextCaseOpenTelescope<CR>\bga.\6n\20nvim_set_keymap\bapi\bvim\19load_extension\14telescope\nsetup\rtextcase\frequire\0", "config", "text-case.nvim")
time([[Config for text-case.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n§\6\0\0\b\0#\00096\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\0016\0\20\0009\0\21\0009\0\22\0005\1\23\0\18\2\0\0'\4\24\0'\5\25\0'\6\26\0\18\a\1\0B\2\5\1\18\2\0\0'\4\24\0'\5\27\0'\6\28\0\18\a\1\0B\2\5\1\18\2\0\0'\4\24\0'\5\29\0'\6\30\0\18\a\1\0B\2\5\1\18\2\0\0'\4\24\0'\5\31\0'\6 \0\18\a\1\0B\2\5\1\18\2\0\0'\4\24\0'\5!\0'\6\"\0\18\a\1\0B\2\5\1K\0\1\0\26:Telescope resume<CR>\15<Leader>fr\27:Telescope buffers<CR>\15<Leader>fb\31:Telescope grep_string<CR>\15<Leader>fc\29:Telescope live_grep<CR>\15<Leader>fg\30:Telescope find_files<CR>\15<Leader>ff\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\2\18sort_lastused\2\rsort_mru\2\roldfiles\1\0\1\rcwd_only\2\15find_files\1\0\0\17find_command\1\0\0\1\6\0\0\afd\v--type\6f\23--strip-cwd-prefix\a-H\rdefaults\1\0\0\22vimgrep_arguments\1\t\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\r--hidden\25file_ignore_patterns\1\0\0\1\4\0\0\n.git/\19pnpm-lock.yaml\20packer_compiled\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\bvim\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: nvim-ts-context-commentstring
time([[Config for nvim-ts-context-commentstring]], true)
try_loadstring("\27LJ\2\në\1\0\0\5\0\v\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0+\1\2\0=\1\n\0K\0\1\0)skip_ts_context_commentstring_module\6g\bvim\26context_commentstring\vconfig\1\0\2\tscss\n// %s\bcss\r/* %s */\1\0\1\venable\2\1\0\1\19enable_autocmd\1\nsetup\29ts_context_commentstring\frequire\0", "config", "nvim-ts-context-commentstring")
time([[Config for nvim-ts-context-commentstring]], false)
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
