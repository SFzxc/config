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
local package_path_str = "/Users/tobi/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/tobi/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/tobi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/tobi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/tobi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["ack.vim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/ack.vim",
    url = "https://github.com/mileszs/ack.vim"
  },
  ["alchemist.vim"] = {
    after_files = { "/Users/tobi/.local/share/nvim/site/pack/packer/opt/alchemist.vim/after/plugin/alchemist.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/opt/alchemist.vim",
    url = "https://github.com/slashmili/alchemist.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["ctrlp.vim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/ctrlp.vim",
    url = "https://github.com/ctrlpvim/ctrlp.vim"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/dart-vim-plugin",
    url = "https://github.com/dart-lang/dart-vim-plugin"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/git-messenger.vim",
    url = "https://github.com/rhysd/git-messenger.vim"
  },
  ["hydrangea-vim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/hydrangea-vim",
    url = "https://github.com/yuttie/hydrangea-vim"
  },
  ["javascript-libraries-syntax.vim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/javascript-libraries-syntax.vim",
    url = "https://github.com/othree/javascript-libraries-syntax.vim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  molokai = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/molokai",
    url = "https://github.com/tomasr/molokai"
  },
  neoformat = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  neoterm = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/neoterm",
    url = "https://github.com/kassio/neoterm"
  },
  nerdcommenter = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/nvim-compe",
    url = "https://github.com/hrsh7th/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/nvim-lspinstall",
    url = "https://github.com/kabouzeid/nvim-lspinstall"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/prettier.nvim",
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  supertab = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/supertab",
    url = "https://github.com/ervandew/supertab"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  tlib_vim = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/tlib_vim",
    url = "https://github.com/tomtom/tlib_vim"
  },
  ["vim-addon-mw-utils"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-addon-mw-utils",
    url = "https://github.com/MarcWeber/vim-addon-mw-utils"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-elixir"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/opt/vim-elixir",
    url = "https://github.com/elixir-lang/vim-elixir"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-grammarous"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-grammarous",
    url = "https://github.com/rhysd/vim-grammarous"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-indent-object",
    url = "https://github.com/michaeljsmith/vim-indent-object"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-mix"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/opt/vim-mix",
    url = "https://github.com/mattreduce/vim-mix"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-python-pep8-indent"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/opt/vim-python-pep8-indent",
    url = "https://github.com/Vimjas/vim-python-pep8-indent"
  },
  ["vim-rails"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/opt/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-ruby"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-ruby",
    url = "https://github.com/vim-ruby/vim-ruby"
  },
  ["vim-ruby-refactoring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/opt/vim-ruby-refactoring",
    url = "https://github.com/ecomba/vim-ruby-refactoring"
  },
  ["vim-snipmate"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-snipmate",
    url = "https://github.com/garbas/vim-snipmate"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-solidity"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-solidity",
    url = "https://github.com/tomlion/vim-solidity"
  },
  ["vim-sort-motion"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-sort-motion",
    url = "https://github.com/christoomey/vim-sort-motion"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-system-copy"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-system-copy",
    url = "https://github.com/christoomey/vim-system-copy"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/janko-m/vim-test"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-textobj-entire",
    url = "https://github.com/kana/vim-textobj-entire"
  },
  ["vim-textobj-line"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-textobj-line",
    url = "https://github.com/kana/vim-textobj-line"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-trailing-whitespace"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-trailing-whitespace",
    url = "https://github.com/bronson/vim-trailing-whitespace"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  },
  ["vim-vue"] = {
    loaded = true,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/start/vim-vue",
    url = "https://github.com/posva/vim-vue"
  },
  ["yats.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/tobi/.local/share/nvim/site/pack/packer/opt/yats.vim",
    url = "https://github.com/HerringtonDarkholme/yats.vim"
  }
}

time([[Defining packer_plugins]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'yats.vim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType elixir ++once lua require("packer.load")({'vim-elixir', 'vim-mix', 'alchemist.vim'}, { ft = "elixir" }, _G.packer_plugins)]]
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'vim-rails', 'vim-ruby-refactoring'}, { ft = "ruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'vim-python-pep8-indent'}, { ft = "python" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/tobi/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], true)
vim.cmd [[source /Users/tobi/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /Users/tobi/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /Users/tobi/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], true)
vim.cmd [[source /Users/tobi/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]]
time([[Sourcing ftdetect script at: /Users/tobi/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], false)
time([[Sourcing ftdetect script at: /Users/tobi/.local/share/nvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]], true)
vim.cmd [[source /Users/tobi/.local/share/nvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]]
time([[Sourcing ftdetect script at: /Users/tobi/.local/share/nvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]], false)
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
