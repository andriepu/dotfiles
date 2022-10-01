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
local package_path_str = "/Users/andriepu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/andriepu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/andriepu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/andriepu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/andriepu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n�\22\0\0\t\0'\1F6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\2\5\0=\2\4\0019\1\2\0009\1\6\0014\2\b\0009\3\a\0'\5\b\0'\6\t\0'\a\n\0B\3\4\2>\3\1\0029\3\a\0'\5\v\0'\6\f\0'\a\r\0B\3\4\2>\3\2\0029\3\a\0'\5\14\0'\6\15\0'\a\16\0B\3\4\2>\3\3\0029\3\a\0'\5\17\0'\6\18\0'\a\19\0B\3\4\2>\3\4\0029\3\a\0'\5\20\0'\6\21\0'\a\22\0B\3\4\2>\3\5\0029\3\a\0'\5\23\0'\6\24\0'\a\25\0B\3\4\2>\3\6\0029\3\a\0'\5\26\0'\6\27\0'\a\28\0B\3\4\0?\3\0\0=\2\4\0016\1\0\0'\3\29\0B\1\2\0029\1\30\0019\3\31\0B\1\2\0016\1 \0009\1!\0019\1\"\0015\2#\0\18\3\1\0'\5$\0'\6%\0'\a&\0\18\b\2\0B\3\5\1K\0\1\0\15:Alpha<CR>\15<Leader>qq\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\vconfig\nsetup\nalpha\v:q<CR>\15   Quit\6qE:cd $HOME/.config/nvim | :e lua/plugins.lua | wincmd k | pwd<CR>\18   Plugins\6p;:e $HOME/.config/nvim | :cd %:p:h | wincmd k | pwd<CR>\18   Options\6o\29:Telescope live_grep<CR>\22   Search Text\6/\30:Telescope find_files<CR>\21   Find Files\6f\28:Telescope oldfiles<CR>\18   Recents\6r\f:Ex<CR>\18   Explore\6-\vbutton\fbuttons\1\19\0\0S                                                                              _                                    ██████                                    o                                ████▒▒▒▒▒▒████                                w                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                                                          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            w                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                                                        ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                                                    ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                                                  ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        �\1                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        k                        ██      ██      ████      ████                        S                                                                              S                                                                              \bval\vheader\fsection\27alpha.themes.dashboard\frequire\15����\4\0" },
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
  cmp_luasnip = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip/loaders/from_vscode\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
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
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\6\0\0\thelp\nalpha\18lsp-installer\flspinfo\vpacker\20buftype_exclude\1\0\0\1\3\0\0\rterminal\rquickfix\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  jester = {
    config = { "\27LJ\2\n�\3\0\0\a\0\17\0\0286\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0029\1\5\0015\3\6\0B\1\2\1\18\1\0\0'\3\a\0'\4\b\0'\5\t\0005\6\n\0B\1\5\1\18\1\0\0'\3\a\0'\4\v\0'\5\f\0005\6\r\0B\1\5\1\18\1\0\0'\3\a\0'\4\14\0'\5\15\0005\6\16\0B\1\5\1K\0\1\0\1\0\1\vsilent\2(:lua require\"jester\".run_last()<CR>\15<Leader>jl\1\0\1\vsilent\2(:lua require\"jester\".run_file()<CR>\15<Leader>jf\1\0\1\vsilent\2#:lua require\"jester\".run()<CR>\15<Leader>jr\6n\1\0\2\bcmd*jest --no-cache -t '$result' -- $file\17terminal_cmd\18:ToggleTerm 9\nsetup\vjester\frequire\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/jester",
    url = "https://github.com/David-Kunz/jester"
  },
  ["lazygit.nvim"] = {
    config = { "\27LJ\2\ny\0\0\b\0\a\0\v6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\17:LazyGit<CR>\15<Leader>gg\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
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
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17�6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3�+\1\1\0X\2\1�+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1�\tbody\15lsp_expand�\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\27�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\18�-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\5\1B\1\1\1X\1\t�-\1\2\0B\1\1\2\15\0\1\0X\2\3�\18\1\0\0B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\1�\2�\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\1�\tjump\rjumpable\21select_prev_item\fvisible�\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\3�\tname\vsource\1\0\5\vbuffer\r[Buffer]\tpath\v[Path]\rnvim_lua\n[Lua]\fluasnip\14[Snippet]\rnvim_lsp\n[Lsp]\tmenu\b%s \vformat\vstring\tkind�\t\1\0\r\0>\0t6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0005\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\bB\b\1\2=\b\14\a9\b\v\0009\b\15\bB\b\1\2=\b\16\a9\b\v\0009\n\v\0009\n\17\n)\f��B\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0009\n\v\0009\n\17\n)\f\1\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0009\n\v\0009\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\25\0009\b\26\b=\b\27\a9\b\v\0005\n\29\0009\v\v\0009\v\28\vB\v\1\2=\v\30\n9\v\v\0009\v\31\vB\v\1\2=\v \nB\b\2\2=\b!\a9\b\v\0009\b\"\b5\n#\0B\b\2\2=\b$\a9\b\v\0003\n%\0005\v&\0B\b\3\2=\b'\a9\b\v\0003\n(\0005\v)\0B\b\3\2=\b*\a=\a\v\0065\a,\0005\b+\0=\b-\a3\b.\0=\b/\a=\a0\0064\a\6\0005\b1\0>\b\1\a5\b2\0>\b\2\a5\b3\0>\b\3\a5\b4\0>\b\4\a5\b5\0>\b\5\a=\a6\6B\4\2\0019\4\5\0009\0047\4'\0068\0005\a:\0004\b\3\0005\t9\0>\t\1\b=\b6\aB\4\3\0019\4\5\0009\0047\4'\6;\0005\a=\0004\b\3\0005\t<\0>\t\1\b=\b6\aB\4\3\0012\0\0�K\0\1\0\1\0\0\1\0\1\tname\vbuffer\6/\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\fsources\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\1\fconfirm\n<Esc>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-k>\21select_prev_item\n<C-j>\1\0\0\21select_next_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tFile\b\vFolder\b\nColor\b\15EnumMember\b\fSnippet\b\rConstant\b\fKeyword\b\vStruct\b\tEnum\b\nEvent\b\nValue\b\rOperator\b\tUnit\b\18TypeParameter\b\rProperty\b\vModule\b\14Interface\b\nClass\b\rVariable\b\nField\b\16Constructor\b\rFunction\b\vMethod\6m\14Reference\b\tText\b\0\fluasnip\bcmp\frequire\0" },
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
  ["nvim-dap"] = {
    config = { "\27LJ\2\n�\5\0\0\t\0\25\00016\0\0\0009\0\1\0009\1\2\0'\3\3\0B\1\2\2'\2\4\0&\1\2\0019\2\5\0009\4\6\0\18\6\1\0B\4\2\0A\2\0\2)\3\0\0\1\3\2\0X\2\4�9\2\a\0005\4\b\0>\1\6\4B\2\2\0016\2\t\0'\4\n\0B\2\2\0029\3\v\0025\4\r\0004\5\3\0\18\6\1\0'\a\14\0&\6\a\6>\6\1\5=\5\15\4=\4\f\0039\3\16\0024\4\3\0005\5\18\0006\6\0\0009\6\1\0069\6\19\6B\6\1\2=\6\20\5>\5\1\0045\5\21\0006\6\t\0'\b\22\0B\6\2\0029\6\23\6=\6\24\5>\5\2\4=\4\17\3K\0\1\0\14processId\17pick_process\14dap.utils\1\0\3\tname\22Attach to process\ttype\nnode2\frequest\vattach\bcwd\vgetcwd\1\0\a\tname\vLaunch\rprotocol\14inspector\frequest\vlaunch\15sourceMaps\2\fconsole\23integratedTerminal\ttype\nnode2\fprogram\f${file}\15javascript\19configurations\targs\26/out/src/nodeDebug.js\1\0\2\ttype\15executable\fcommand\tnode\nnode2\radapters\bdap\frequire\1\6\0\0\bgit\nclone\f--depth\00618https://github.com/microsoft/vscode-node-debug2.git\vsystem\tglob\nempty0/site/pack/packer/custom/vscode-node-debug2\tdata\fstdpath\afn\bvim\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-gomove"] = {
    config = { "\27LJ\2\n�\3\0\0\b\0\22\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\1\a\0\18\2\0\0'\4\b\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\b\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\b\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\b\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\17\0'\5\t\0'\6\18\0\18\a\1\0B\2\5\1\18\2\0\0'\4\17\0'\5\v\0'\6\19\0\18\a\1\0B\2\5\1\18\2\0\0'\4\17\0'\5\r\0'\6\20\0\18\a\1\0B\2\5\1\18\2\0\0'\4\17\0'\5\15\0'\6\21\0\18\a\1\0B\2\5\1K\0\1\0\21<Plug>GoVSMRight\18<Plug>GoVSMUp\20<Plug>GoVSMDown\20<Plug>GoVSMLeft\6x\21<Plug>GoNSMRight\n<S-l>\18<Plug>GoNSMUp\n<S-k>\20<Plug>GoNSMDown\n<S-j>\20<Plug>GoNSMLeft\n<S-h>\6n\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\1\0\1\17map_defaults\1\nsetup\vgomove\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-gomove",
    url = "https://github.com/booperlv/nvim-gomove"
  },
  ["nvim-hardline"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rhardline\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-hardline",
    url = "https://github.com/ojroques/nvim-hardline"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\3\0\0\14gitcommit\14gitrebase\29lastplace_ignore_buftype\1\0\1\25lastplace_open_folds\2\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n�\6\0\2\n\0\29\0N6\2\0\0009\2\1\0029\2\2\0025\3\3\0006\4\0\0009\4\1\0049\4\4\4\18\6\1\0'\a\5\0'\b\6\0B\4\4\1\18\4\2\0'\6\a\0'\a\b\0'\b\t\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\n\0'\b\v\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\f\0'\b\r\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\14\0'\b\15\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\16\0'\b\17\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\18\0'\b\19\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\b\0'\b\20\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\21\0'\b\22\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\23\0'\b\24\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\25\0'\b\26\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\27\0'\b\28\0\18\t\3\0B\4\5\1K\0\1\0&:lua vim.lsp.buf.formatting()<CR>\15<leader>lf):lua vim.diagnostic.setloclist()<CR>\15<leader>lq(:lua vim.diagnostic.goto_next()<CR>\a]d(:lua vim.diagnostic.goto_prev()<CR>\a[d):lua vim.diagnostic.open_float()<CR>&:lua vim.lsp.buf.references()<CR>\15<leader>gr':lua vim.lsp.buf.code_action()<CR>\15<leader>ca#:lua vim.lsp.util.rename()<CR>\15<leader>rn*:lua vim.lsp.buf.implementation()<CR>\15<leader>li!:lua vim.lsp.buf.hover()<CR>\15<leader>lh&:lua vim.lsp.buf.definition()<CR>\15<leader>ld\6n\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim�\a\1\1\v\1&\0i5\1\1\0003\2\0\0=\2\2\1-\2\0\0009\2\3\0026\4\4\0009\4\5\0049\4\6\0049\4\a\4B\4\1\0A\2\0\2=\2\b\0019\2\t\0\a\2\n\0X\2\16�9\2\b\0019\2\v\0029\2\f\0029\2\r\2+\3\2\0=\3\14\0026\2\15\0'\4\16\0B\2\2\0026\3\4\0009\3\17\3'\5\18\0\18\6\2\0\18\a\1\0B\3\4\2\18\1\3\0009\2\t\0\a\2\19\0X\2\n�6\2\15\0'\4\20\0B\2\2\0026\3\4\0009\3\17\3'\5\18\0\18\6\2\0\18\a\1\0B\3\4\2\18\1\3\0009\2\t\0\a\2\21\0X\2\n�6\2\15\0'\4\22\0B\2\2\0026\3\4\0009\3\17\3'\5\18\0\18\6\2\0\18\a\1\0B\3\4\2\18\1\3\0009\2\t\0\a\2\23\0X\2(�6\2\15\0'\4\24\0B\2\2\0026\3\4\0009\3\17\3'\5\18\0\18\6\2\0\18\a\1\0B\3\4\2\18\1\3\0006\3\4\0009\3\25\0039\3\26\3'\5\27\0005\6\29\0005\a\28\0=\a\30\0066\a\4\0009\a\25\a9\a\31\a'\t \0004\n\0\0B\a\3\2=\a!\6B\3\3\0016\3\4\0009\3\25\0039\3\26\3'\5\27\0005\6#\0005\a\"\0=\a\30\0066\a\4\0009\a\25\a9\a\31\a'\t$\0004\n\0\0B\a\3\2=\a!\6B\3\3\1\18\4\0\0009\2%\0\18\5\1\0B\2\3\1K\0\1\0\1�\nsetup\"MyAutocmdsFormatting_Prettier\1\0\1\fcommand\rPrettier\1\3\0\0\t*.md\v*.json\ngroup)MyAutocmdsFormatting_ESLint_Prettier\24nvim_create_augroup\fpattern\1\0\1\fcommand*exec \"EslintFixAll\" | exec \"Prettier\"\1\4\0\0\t*.ts\t*.js\n*.vue\16BufWritePre\24nvim_create_autocmd\bapi\15lsp.eslint\veslint\14lsp.volar\nvolar\20lsp.sumneko_lua\16sumneko_lua\nforce\20tbl_deep_extend\15lsp.jsonls\frequire\19snippetSupport\19completionItem\15completion\17textDocument\vjsonls\tname\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\14on_attach\1\0\0\0�\3\1\0\14\0\18\0+6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4B\2\2\0015\2\t\0006\3\n\0\18\5\2\0B\3\2\4H\6\18�9\b\v\0\18\n\a\0B\b\2\3\15\0\b\0X\n\r�\18\f\t\0009\n\f\tB\n\2\2\14\0\n\0X\n\b�6\n\r\0'\f\14\0\18\r\a\0&\f\r\fB\n\2\1\18\f\t\0009\n\15\tB\n\2\1F\6\3\3R\6�9\3\16\0003\5\17\0B\3\2\0012\0\0�K\0\1\0\0\20on_server_ready\finstall\16Installing \nprint\17is_installed\15get_server\npairs\1\a\0\0\vbashls\veslint\vjsonls\16sumneko_lua\16tailwindcss\nvolar\aui\1\0\0\nicons\1\0\0\1\0\3\19server_pending\t \23server_uninstalled\t \21server_installed\t \rsettings\17cmp_nvim_lsp\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\a\0\0\v\0&\0N4\0\5\0005\1\0\0>\1\1\0005\1\1\0>\1\2\0005\1\2\0>\1\3\0005\1\3\0>\1\4\0006\1\4\0\18\3\0\0B\1\2\4X\4\n�6\6\5\0009\6\6\0069\6\a\0069\b\b\0055\t\t\0009\n\b\5=\n\n\t9\n\v\5=\n\v\tB\6\3\1E\4\3\3R\4�5\1\14\0005\2\f\0=\0\r\2=\2\15\0015\2\16\0=\2\17\0016\2\5\0009\2\18\0029\2\19\2\18\4\1\0B\2\2\0016\2\5\0009\2\20\0029\2\21\0026\3\5\0009\3\20\0039\3\23\0036\5\5\0009\5\20\0059\5\21\0059\5\24\0055\6\25\0B\3\3\2=\3\22\0026\2\5\0009\2\20\0029\2\21\0026\3\5\0009\3\20\0039\3\23\0036\5\5\0009\5\20\0059\5\21\0059\5\27\0055\6\28\0B\3\3\2=\3\26\0026\2\5\0009\2\29\0029\2\30\2'\4\31\0005\5!\0005\6 \0=\6\"\0056\6\5\0009\6\29\0069\6#\6'\b$\0004\t\0\0B\6\3\2=\6%\5B\2\3\1K\0\1\0\ngroup\23Autocmd_LspRestart\24nvim_create_augroup\fpattern\1\0\1\fcommand\15LspRestart\1\6\0\0\t*.ts\t*.js\n*.vue\v*.json\t*.md\15BufNewFile\24nvim_create_autocmd\bapi\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\blsp\vconfig\15diagnostic\nfloat\1\0\6\vheader\5\vprefix\5\vsource\valways\nstyle\fminimal\14focusable\1\vborder\frounded\nsigns\1\0\3\21update_in_insert\2\14underline\1\18severity_sort\2\vactive\1\0\0\ttext\vtexthl\1\0\1\nnumhl\5\tname\16sign_define\afn\bvim\vipairs\1\0\2\tname\23DiagnosticSignInfo\ttext\t \1\0\2\tname\23DiagnosticSignHint\ttext\t \1\0\2\tname\23DiagnosticSignWarn\ttext\t \1\0\2\tname\24DiagnosticSignError\ttext\t \0" },
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
  ["nvim-ts-context-commentstring"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\26context_commentstring\1\0\0\vconfig\1\0\2\bcss\r/* %s */\tscss\n// %s\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    config = { "\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
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
    config = { "\27LJ\2\n�\3\0\0\b\0\18\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0005\1\v\0\18\2\0\0'\4\f\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\f\0'\6\15\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\16\0'\6\17\0\18\a\1\0B\2\5\1K\0\1\0,N:lua require(\"specs\").show_specs()<CR>\6N,n:lua require(\"specs\").show_specs()<CR>::nohlsearch<CR>:lua require(\"specs\").show_specs()<CR>\20<Leader><Space>\6n\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\npopup\nfader\16pulse_fader\1\0\2\nwidth\3\25\vinc_ms\3\n\1\0\2\15show_jumps\2\rmin_jump\3\30\nsetup\nspecs\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\b\0\31\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\v\0005\4\t\0005\5\b\0=\5\n\4=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0005\1\21\0\18\2\0\0'\4\22\0'\5\23\0'\6\24\0\18\a\1\0B\2\5\1\18\2\0\0'\4\22\0'\5\25\0'\6\26\0\18\a\1\0B\2\5\1\18\2\0\0'\4\22\0'\5\27\0'\6\28\0\18\a\1\0B\2\5\1\18\2\0\0'\4\22\0'\5\29\0'\6\30\0\18\a\1\0B\2\5\1K\0\1\0\26:Telescope resume<CR>\15<Leader>fr\27:Telescope buffers<CR>\15<Leader>fb\29:Telescope live_grep<CR>\15<Leader>fg\30:Telescope find_files<CR>\15<Leader>ff\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\2\18sort_lastused\2\rsort_mru\2\roldfiles\1\0\1\rcwd_only\2\15find_files\1\0\0\17find_command\1\0\0\1\6\0\0\afd\v--type\6f\23--strip-cwd-prefix\a-H\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\n.yarn\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tidy.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/opt/tidy.nvim",
    url = "https://github.com/McAuleyPenney/tidy.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n�\1\0\1\2\0\a\2\0189\1\0\0\a\1\1\0X\1\6�6\1\2\0009\1\3\0019\1\4\1\24\1\0\1L\1\2\0X\1\b�9\1\0\0\a\1\5\0X\1\5�6\1\2\0009\1\3\0019\1\6\1\24\1\1\1L\1\2\0K\0\1\0\fcolumns\rvertical\nlines\6o\bvim\15horizontal\14direction����\3����\3��̙\19����\3�\2\0\0\t\0\r\0!6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0)\4\0\0'\5\4\0'\6\5\0'\a\6\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\a\0'\a\b\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\t\0'\a\n\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\v\0'\a\f\0\18\b\1\0B\2\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\1\0\1\fnoremap\2\24nvim_buf_set_keymap\bapi\bvim�\3\1\0\a\0\21\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0023\3\6\0=\3\a\2B\0\2\0016\0\b\0003\1\n\0=\1\t\0006\0\v\0009\0\f\0009\0\r\0\18\1\0\0'\3\14\0'\4\15\0'\5\16\0005\6\17\0B\1\5\0016\1\v\0009\1\18\1'\3\19\0B\1\2\0016\1\v\0009\1\18\1'\3\20\0B\1\2\1K\0\1\0/autocmd TermOpen * setlocal signcolumn=yes:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\1\0\1\fnoremap\2):ToggleTerm direction=horizontal<CR>\f<C-A-\\>\6n\20nvim_set_keymap\bapi\bvim\0\25set_terminal_keymaps\a_G\tsize\0\15float_opts\1\0\1\vborder\vcurved\1\0\3\17open_mapping\n<C-\\>\20start_in_insert\2\14direction\nfloat\nsetup\15toggleterm\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\0\b\0\f\0\0296\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\1\0B\2\5\1K\0\1\0\6D\6M\add\amm\6x\6d\6m\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-cutlass",
    url = "https://github.com/svermeulen/vim-cutlass"
  },
  ["vim-numbertoggle"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-numbertoggle",
    url = "https://github.com/jeffkreeftmeijer/vim-numbertoggle"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/Users/andriepu/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
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
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n�\22\0\0\t\0'\1F6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0015\2\5\0=\2\4\0019\1\2\0009\1\6\0014\2\b\0009\3\a\0'\5\b\0'\6\t\0'\a\n\0B\3\4\2>\3\1\0029\3\a\0'\5\v\0'\6\f\0'\a\r\0B\3\4\2>\3\2\0029\3\a\0'\5\14\0'\6\15\0'\a\16\0B\3\4\2>\3\3\0029\3\a\0'\5\17\0'\6\18\0'\a\19\0B\3\4\2>\3\4\0029\3\a\0'\5\20\0'\6\21\0'\a\22\0B\3\4\2>\3\5\0029\3\a\0'\5\23\0'\6\24\0'\a\25\0B\3\4\2>\3\6\0029\3\a\0'\5\26\0'\6\27\0'\a\28\0B\3\4\0?\3\0\0=\2\4\0016\1\0\0'\3\29\0B\1\2\0029\1\30\0019\3\31\0B\1\2\0016\1 \0009\1!\0019\1\"\0015\2#\0\18\3\1\0'\5$\0'\6%\0'\a&\0\18\b\2\0B\3\5\1K\0\1\0\15:Alpha<CR>\15<Leader>qq\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\vconfig\nsetup\nalpha\v:q<CR>\15   Quit\6qE:cd $HOME/.config/nvim | :e lua/plugins.lua | wincmd k | pwd<CR>\18   Plugins\6p;:e $HOME/.config/nvim | :cd %:p:h | wincmd k | pwd<CR>\18   Options\6o\29:Telescope live_grep<CR>\22   Search Text\6/\30:Telescope find_files<CR>\21   Find Files\6f\28:Telescope oldfiles<CR>\18   Recents\6r\f:Ex<CR>\18   Explore\6-\vbutton\fbuttons\1\19\0\0S                                                                              _                                    ██████                                    o                                ████▒▒▒▒▒▒████                                w                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                                                          ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            w                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                                                        ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                                                    ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                                                  ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        �\1                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        �\1                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        k                        ██      ██      ████      ████                        S                                                                              S                                                                              \bval\vheader\fsection\27alpha.themes.dashboard\frequire\15����\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\30lastplace_ignore_filetype\1\3\0\0\14gitcommit\14gitrebase\29lastplace_ignore_buftype\1\0\1\25lastplace_open_folds\2\1\4\0\0\rquickfix\vnofile\thelp\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\1\2\0\a\2\0189\1\0\0\a\1\1\0X\1\6�6\1\2\0009\1\3\0019\1\4\1\24\1\0\1L\1\2\0X\1\b�9\1\0\0\a\1\5\0X\1\5�6\1\2\0009\1\3\0019\1\6\1\24\1\1\1L\1\2\0K\0\1\0\fcolumns\rvertical\nlines\6o\bvim\15horizontal\14direction����\3����\3��̙\19����\3�\2\0\0\t\0\r\0!6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0)\4\0\0'\5\4\0'\6\5\0'\a\6\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\a\0'\a\b\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\t\0'\a\n\0\18\b\1\0B\2\6\1\18\2\0\0)\4\0\0'\5\4\0'\6\v\0'\a\f\0\18\b\1\0B\2\6\1K\0\1\0\21<C-\\><C-n><C-W>l\n<C-l>\21<C-\\><C-n><C-W>k\n<C-k>\21<C-\\><C-n><C-W>j\n<C-j>\21<C-\\><C-n><C-W>h\n<C-h>\6t\1\0\1\fnoremap\2\24nvim_buf_set_keymap\bapi\bvim�\3\1\0\a\0\21\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0023\3\6\0=\3\a\2B\0\2\0016\0\b\0003\1\n\0=\1\t\0006\0\v\0009\0\f\0009\0\r\0\18\1\0\0'\3\14\0'\4\15\0'\5\16\0005\6\17\0B\1\5\0016\1\v\0009\1\18\1'\3\19\0B\1\2\0016\1\v\0009\1\18\1'\3\20\0B\1\2\1K\0\1\0/autocmd TermOpen * setlocal signcolumn=yes:autocmd! TermOpen term://* lua set_terminal_keymaps()\bcmd\1\0\1\fnoremap\2):ToggleTerm direction=horizontal<CR>\f<C-A-\\>\6n\20nvim_set_keymap\bapi\bvim\0\25set_terminal_keymaps\a_G\tsize\0\15float_opts\1\0\1\vborder\vcurved\1\0\3\17open_mapping\n<C-\\>\20start_in_insert\2\14direction\nfloat\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: friendly-snippets
time([[Config for friendly-snippets]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip/loaders/from_vscode\frequire\0", "config", "friendly-snippets")
time([[Config for friendly-snippets]], false)
-- Config for: nvim-ts-context-commentstring
time([[Config for nvim-ts-context-commentstring]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\26context_commentstring\1\0\0\vconfig\1\0\2\bcss\r/* %s */\tscss\n// %s\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-context-commentstring")
time([[Config for nvim-ts-context-commentstring]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
try_loadstring("\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\frainbow\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-ts-rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: vim-cutlass
time([[Config for vim-cutlass]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\f\0\0296\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\a\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\b\0'\6\t\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\n\0'\6\v\0\18\a\1\0B\2\5\1K\0\1\0\6D\6M\add\amm\6x\6d\6m\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "config", "vim-cutlass")
time([[Config for vim-cutlass]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n�\5\0\0\t\0\25\00016\0\0\0009\0\1\0009\1\2\0'\3\3\0B\1\2\2'\2\4\0&\1\2\0019\2\5\0009\4\6\0\18\6\1\0B\4\2\0A\2\0\2)\3\0\0\1\3\2\0X\2\4�9\2\a\0005\4\b\0>\1\6\4B\2\2\0016\2\t\0'\4\n\0B\2\2\0029\3\v\0025\4\r\0004\5\3\0\18\6\1\0'\a\14\0&\6\a\6>\6\1\5=\5\15\4=\4\f\0039\3\16\0024\4\3\0005\5\18\0006\6\0\0009\6\1\0069\6\19\6B\6\1\2=\6\20\5>\5\1\0045\5\21\0006\6\t\0'\b\22\0B\6\2\0029\6\23\6=\6\24\5>\5\2\4=\4\17\3K\0\1\0\14processId\17pick_process\14dap.utils\1\0\3\tname\22Attach to process\ttype\nnode2\frequest\vattach\bcwd\vgetcwd\1\0\a\tname\vLaunch\rprotocol\14inspector\frequest\vlaunch\15sourceMaps\2\fconsole\23integratedTerminal\ttype\nnode2\fprogram\f${file}\15javascript\19configurations\targs\26/out/src/nodeDebug.js\1\0\2\ttype\15executable\fcommand\tnode\nnode2\radapters\bdap\frequire\1\6\0\0\bgit\nclone\f--depth\00618https://github.com/microsoft/vscode-node-debug2.git\vsystem\tglob\nempty0/site/pack/packer/custom/vscode-node-debug2\tdata\fstdpath\afn\bvim\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0'\4\b\0005\5\t\0B\0\5\1K\0\1\0\1\0\1\fnoremap\2\17:HopWord<CR>\15<Leader>ww\6n\20nvim_set_keymap\bapi\bvim\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-gomove
time([[Config for nvim-gomove]], true)
try_loadstring("\27LJ\2\n�\3\0\0\b\0\22\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\1\a\0\18\2\0\0'\4\b\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\b\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\b\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\b\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\17\0'\5\t\0'\6\18\0\18\a\1\0B\2\5\1\18\2\0\0'\4\17\0'\5\v\0'\6\19\0\18\a\1\0B\2\5\1\18\2\0\0'\4\17\0'\5\r\0'\6\20\0\18\a\1\0B\2\5\1\18\2\0\0'\4\17\0'\5\15\0'\6\21\0\18\a\1\0B\2\5\1K\0\1\0\21<Plug>GoVSMRight\18<Plug>GoVSMUp\20<Plug>GoVSMDown\20<Plug>GoVSMLeft\6x\21<Plug>GoNSMRight\n<S-l>\18<Plug>GoNSMUp\n<S-k>\20<Plug>GoNSMDown\n<S-j>\20<Plug>GoNSMLeft\n<S-h>\6n\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\1\0\1\17map_defaults\1\nsetup\vgomove\frequire\0", "config", "nvim-gomove")
time([[Config for nvim-gomove]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21filetype_exclude\1\6\0\0\thelp\nalpha\18lsp-installer\flspinfo\vpacker\20buftype_exclude\1\0\0\1\3\0\0\rterminal\rquickfix\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n�\a\0\0\v\0&\0N4\0\5\0005\1\0\0>\1\1\0005\1\1\0>\1\2\0005\1\2\0>\1\3\0005\1\3\0>\1\4\0006\1\4\0\18\3\0\0B\1\2\4X\4\n�6\6\5\0009\6\6\0069\6\a\0069\b\b\0055\t\t\0009\n\b\5=\n\n\t9\n\v\5=\n\v\tB\6\3\1E\4\3\3R\4�5\1\14\0005\2\f\0=\0\r\2=\2\15\0015\2\16\0=\2\17\0016\2\5\0009\2\18\0029\2\19\2\18\4\1\0B\2\2\0016\2\5\0009\2\20\0029\2\21\0026\3\5\0009\3\20\0039\3\23\0036\5\5\0009\5\20\0059\5\21\0059\5\24\0055\6\25\0B\3\3\2=\3\22\0026\2\5\0009\2\20\0029\2\21\0026\3\5\0009\3\20\0039\3\23\0036\5\5\0009\5\20\0059\5\21\0059\5\27\0055\6\28\0B\3\3\2=\3\26\0026\2\5\0009\2\29\0029\2\30\2'\4\31\0005\5!\0005\6 \0=\6\"\0056\6\5\0009\6\29\0069\6#\6'\b$\0004\t\0\0B\6\3\2=\6%\5B\2\3\1K\0\1\0\ngroup\23Autocmd_LspRestart\24nvim_create_augroup\fpattern\1\0\1\fcommand\15LspRestart\1\6\0\0\t*.ts\t*.js\n*.vue\v*.json\t*.md\15BufNewFile\24nvim_create_autocmd\bapi\1\0\1\vborder\frounded\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\frounded\nhover\twith\23textDocument/hover\rhandlers\blsp\vconfig\15diagnostic\nfloat\1\0\6\vheader\5\vprefix\5\vsource\valways\nstyle\fminimal\14focusable\1\vborder\frounded\nsigns\1\0\3\21update_in_insert\2\14underline\1\18severity_sort\2\vactive\1\0\0\ttext\vtexthl\1\0\1\nnumhl\5\tname\16sign_define\afn\bvim\vipairs\1\0\2\tname\23DiagnosticSignInfo\ttext\t \1\0\2\tname\23DiagnosticSignHint\ttext\t \1\0\2\tname\23DiagnosticSignWarn\ttext\t \1\0\2\tname\24DiagnosticSignError\ttext\t \0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-hardline
time([[Config for nvim-hardline]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rhardline\frequire\0", "config", "nvim-hardline")
time([[Config for nvim-hardline]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n�\6\0\2\n\0\29\0N6\2\0\0009\2\1\0029\2\2\0025\3\3\0006\4\0\0009\4\1\0049\4\4\4\18\6\1\0'\a\5\0'\b\6\0B\4\4\1\18\4\2\0'\6\a\0'\a\b\0'\b\t\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\n\0'\b\v\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\f\0'\b\r\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\14\0'\b\15\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\16\0'\b\17\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\18\0'\b\19\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\b\0'\b\20\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\21\0'\b\22\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\23\0'\b\24\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\25\0'\b\26\0\18\t\3\0B\4\5\1\18\4\2\0'\6\a\0'\a\27\0'\b\28\0\18\t\3\0B\4\5\1K\0\1\0&:lua vim.lsp.buf.formatting()<CR>\15<leader>lf):lua vim.diagnostic.setloclist()<CR>\15<leader>lq(:lua vim.diagnostic.goto_next()<CR>\a]d(:lua vim.diagnostic.goto_prev()<CR>\a[d):lua vim.diagnostic.open_float()<CR>&:lua vim.lsp.buf.references()<CR>\15<leader>gr':lua vim.lsp.buf.code_action()<CR>\15<leader>ca#:lua vim.lsp.util.rename()<CR>\15<leader>rn*:lua vim.lsp.buf.implementation()<CR>\15<leader>li!:lua vim.lsp.buf.hover()<CR>\15<leader>lh&:lua vim.lsp.buf.definition()<CR>\15<leader>ld\6n\27v:lua.vim.lsp.omnifunc\romnifunc\24nvim_buf_set_option\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim�\a\1\1\v\1&\0i5\1\1\0003\2\0\0=\2\2\1-\2\0\0009\2\3\0026\4\4\0009\4\5\0049\4\6\0049\4\a\4B\4\1\0A\2\0\2=\2\b\0019\2\t\0\a\2\n\0X\2\16�9\2\b\0019\2\v\0029\2\f\0029\2\r\2+\3\2\0=\3\14\0026\2\15\0'\4\16\0B\2\2\0026\3\4\0009\3\17\3'\5\18\0\18\6\2\0\18\a\1\0B\3\4\2\18\1\3\0009\2\t\0\a\2\19\0X\2\n�6\2\15\0'\4\20\0B\2\2\0026\3\4\0009\3\17\3'\5\18\0\18\6\2\0\18\a\1\0B\3\4\2\18\1\3\0009\2\t\0\a\2\21\0X\2\n�6\2\15\0'\4\22\0B\2\2\0026\3\4\0009\3\17\3'\5\18\0\18\6\2\0\18\a\1\0B\3\4\2\18\1\3\0009\2\t\0\a\2\23\0X\2(�6\2\15\0'\4\24\0B\2\2\0026\3\4\0009\3\17\3'\5\18\0\18\6\2\0\18\a\1\0B\3\4\2\18\1\3\0006\3\4\0009\3\25\0039\3\26\3'\5\27\0005\6\29\0005\a\28\0=\a\30\0066\a\4\0009\a\25\a9\a\31\a'\t \0004\n\0\0B\a\3\2=\a!\6B\3\3\0016\3\4\0009\3\25\0039\3\26\3'\5\27\0005\6#\0005\a\"\0=\a\30\0066\a\4\0009\a\25\a9\a\31\a'\t$\0004\n\0\0B\a\3\2=\a!\6B\3\3\1\18\4\0\0009\2%\0\18\5\1\0B\2\3\1K\0\1\0\1�\nsetup\"MyAutocmdsFormatting_Prettier\1\0\1\fcommand\rPrettier\1\3\0\0\t*.md\v*.json\ngroup)MyAutocmdsFormatting_ESLint_Prettier\24nvim_create_augroup\fpattern\1\0\1\fcommand*exec \"EslintFixAll\" | exec \"Prettier\"\1\4\0\0\t*.ts\t*.js\n*.vue\16BufWritePre\24nvim_create_autocmd\bapi\15lsp.eslint\veslint\14lsp.volar\nvolar\20lsp.sumneko_lua\16sumneko_lua\nforce\20tbl_deep_extend\15lsp.jsonls\frequire\19snippetSupport\19completionItem\15completion\17textDocument\vjsonls\tname\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\14on_attach\1\0\0\0�\3\1\0\14\0\18\0+6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4B\2\2\0015\2\t\0006\3\n\0\18\5\2\0B\3\2\4H\6\18�9\b\v\0\18\n\a\0B\b\2\3\15\0\b\0X\n\r�\18\f\t\0009\n\f\tB\n\2\2\14\0\n\0X\n\b�6\n\r\0'\f\14\0\18\r\a\0&\f\r\fB\n\2\1\18\f\t\0009\n\15\tB\n\2\1F\6\3\3R\6�9\3\16\0003\5\17\0B\3\2\0012\0\0�K\0\1\0\0\20on_server_ready\finstall\16Installing \nprint\17is_installed\15get_server\npairs\1\a\0\0\vbashls\veslint\vjsonls\16sumneko_lua\16tailwindcss\nvolar\aui\1\0\0\nicons\1\0\0\1\0\3\19server_pending\t \23server_uninstalled\t \21server_installed\t \rsettings\17cmp_nvim_lsp\23nvim-lsp-installer\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\ni\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\14highlight\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: specs.nvim
time([[Config for specs.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\b\0\18\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0006\4\0\0'\6\1\0B\4\2\0029\4\5\4=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0005\1\v\0\18\2\0\0'\4\f\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\f\0'\6\15\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\16\0'\6\17\0\18\a\1\0B\2\5\1K\0\1\0,N:lua require(\"specs\").show_specs()<CR>\6N,n:lua require(\"specs\").show_specs()<CR>::nohlsearch<CR>:lua require(\"specs\").show_specs()<CR>\20<Leader><Space>\6n\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\npopup\nfader\16pulse_fader\1\0\2\nwidth\3\25\vinc_ms\3\n\1\0\2\15show_jumps\2\rmin_jump\3\30\nsetup\nspecs\frequire\0", "config", "specs.nvim")
time([[Config for specs.nvim]], false)
-- Config for: lazygit.nvim
time([[Config for lazygit.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\b\0\a\0\v6\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1K\0\1\0\17:LazyGit<CR>\15<Leader>gg\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "config", "lazygit.nvim")
time([[Config for lazygit.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17�6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3�+\1\1\0X\2\1�+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1�\tbody\15lsp_expand�\1\0\1\3\3\6\0%-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\27�-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\3\1B\1\1\1X\1\18�-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4�-\1\1\0009\1\5\1B\1\1\1X\1\t�-\1\2\0B\1\1\2\15\0\1\0X\2\3�\18\1\0\0B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\1�\2�\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisible�\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\r�-\1\1\0009\1\2\1)\3��B\1\2\2\15\0\1\0X\2\5�-\1\1\0009\1\3\1)\3��B\1\2\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\0�\1�\tjump\rjumpable\21select_prev_item\fvisible�\1\0\2\a\1\b\0\0146\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\5B\2\3\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\3�\tname\vsource\1\0\5\vbuffer\r[Buffer]\tpath\v[Path]\rnvim_lua\n[Lua]\fluasnip\14[Snippet]\rnvim_lsp\n[Lsp]\tmenu\b%s \vformat\vstring\tkind�\t\1\0\r\0>\0t6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0023\2\3\0005\3\4\0009\4\5\0005\6\t\0005\a\a\0003\b\6\0=\b\b\a=\a\n\0065\a\r\0009\b\v\0009\b\f\bB\b\1\2=\b\14\a9\b\v\0009\b\15\bB\b\1\2=\b\16\a9\b\v\0009\n\v\0009\n\17\n)\f��B\n\2\0025\v\18\0B\b\3\2=\b\19\a9\b\v\0009\n\v\0009\n\17\n)\f\1\0B\n\2\0025\v\20\0B\b\3\2=\b\21\a9\b\v\0009\n\v\0009\n\22\nB\n\1\0025\v\23\0B\b\3\2=\b\24\a9\b\25\0009\b\26\b=\b\27\a9\b\v\0005\n\29\0009\v\v\0009\v\28\vB\v\1\2=\v\30\n9\v\v\0009\v\31\vB\v\1\2=\v \nB\b\2\2=\b!\a9\b\v\0009\b\"\b5\n#\0B\b\2\2=\b$\a9\b\v\0003\n%\0005\v&\0B\b\3\2=\b'\a9\b\v\0003\n(\0005\v)\0B\b\3\2=\b*\a=\a\v\0065\a,\0005\b+\0=\b-\a3\b.\0=\b/\a=\a0\0064\a\6\0005\b1\0>\b\1\a5\b2\0>\b\2\a5\b3\0>\b\3\a5\b4\0>\b\4\a5\b5\0>\b\5\a=\a6\6B\4\2\0019\4\5\0009\0047\4'\0068\0005\a:\0004\b\3\0005\t9\0>\t\1\b=\b6\aB\4\3\0019\4\5\0009\0047\4'\6;\0005\a=\0004\b\3\0005\t<\0>\t\1\b=\b6\aB\4\3\0012\0\0�K\0\1\0\1\0\0\1\0\1\tname\vbuffer\6/\1\0\0\1\0\1\tname\fcmdline\6:\fcmdline\fsources\1\0\1\tname\rnvim_lua\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\1\fconfirm\n<Esc>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-b>\1\3\0\0\6i\6c\16scroll_docs\n<C-k>\21select_prev_item\n<C-j>\1\0\0\21select_next_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\1\0\25\tFile\b\vFolder\b\nColor\b\15EnumMember\b\fSnippet\b\rConstant\b\fKeyword\b\vStruct\b\tEnum\b\nEvent\b\nValue\b\rOperator\b\tUnit\b\18TypeParameter\b\rProperty\b\vModule\b\14Interface\b\nClass\b\rVariable\b\nField\b\16Constructor\b\rFunction\b\vMethod\6m\14Reference\b\tText\b\0\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\bvim\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\b\0\31\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\v\0005\4\t\0005\5\b\0=\5\n\4=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\0016\0\18\0009\0\19\0009\0\20\0005\1\21\0\18\2\0\0'\4\22\0'\5\23\0'\6\24\0\18\a\1\0B\2\5\1\18\2\0\0'\4\22\0'\5\25\0'\6\26\0\18\a\1\0B\2\5\1\18\2\0\0'\4\22\0'\5\27\0'\6\28\0\18\a\1\0B\2\5\1\18\2\0\0'\4\22\0'\5\29\0'\6\30\0\18\a\1\0B\2\5\1K\0\1\0\26:Telescope resume<CR>\15<Leader>fr\27:Telescope buffers<CR>\15<Leader>fb\29:Telescope live_grep<CR>\15<Leader>fg\30:Telescope find_files<CR>\15<Leader>ff\6n\1\0\2\fnoremap\2\vsilent\2\20nvim_set_keymap\bapi\bvim\fpickers\fbuffers\1\0\2\18sort_lastused\2\rsort_mru\2\roldfiles\1\0\1\rcwd_only\2\15find_files\1\0\0\17find_command\1\0\0\1\6\0\0\afd\v--type\6f\23--strip-cwd-prefix\a-H\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\3\0\0\17node_modules\n.yarn\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: jester
time([[Config for jester]], true)
try_loadstring("\27LJ\2\n�\3\0\0\a\0\17\0\0286\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0029\1\5\0015\3\6\0B\1\2\1\18\1\0\0'\3\a\0'\4\b\0'\5\t\0005\6\n\0B\1\5\1\18\1\0\0'\3\a\0'\4\v\0'\5\f\0005\6\r\0B\1\5\1\18\1\0\0'\3\a\0'\4\14\0'\5\15\0005\6\16\0B\1\5\1K\0\1\0\1\0\1\vsilent\2(:lua require\"jester\".run_last()<CR>\15<Leader>jl\1\0\1\vsilent\2(:lua require\"jester\".run_file()<CR>\15<Leader>jf\1\0\1\vsilent\2#:lua require\"jester\".run()<CR>\15<Leader>jr\6n\1\0\2\bcmd*jest --no-cache -t '$result' -- $file\17terminal_cmd\18:ToggleTerm 9\nsetup\vjester\frequire\20nvim_set_keymap\bapi\bvim\0", "config", "jester")
time([[Config for jester]], false)
-- Config for: vim-yoink
time([[Config for vim-yoink]], true)
try_loadstring("\27LJ\2\n�\3\0\0\b\0\19\0-6\0\0\0009\0\1\0009\0\2\0005\1\3\0006\2\0\0009\2\4\2)\3\1\0=\3\5\2\18\2\0\0'\4\6\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\v\0'\6\f\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\6\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1K\0\1\0\26<plug>(YoinkPaste_gP)\agP\26<plug>(YoinkPaste_gp)\agp\25<plug>(YoinkPaste_P)\6P\25<plug>(YoinkPaste_p)\6p&<plug>(YoinkPostPasteSwapForward)\n<C-p>#<plug>(YoinkPostPasteSwapBack)\n<C-n>\6n!yoinkIncludeDeleteOperations\6g\1\0\1\vsilent\2\20nvim_set_keymap\bapi\bvim\0", "config", "vim-yoink")
time([[Config for vim-yoink]], false)
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
