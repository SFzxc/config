return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- common
  use 'tpope/vim-fugitive' -- Git commands
  use 'vim-airline/vim-airline' -- powerline
  use 'vim-airline/vim-airline-themes'
  use 'rhysd/vim-grammarous' -- grammar check
  use 'andymass/vim-matchup' -- matching parens and more
  use 'bronson/vim-trailing-whitespace' -- highlight trailing spaces
  use 'rhysd/git-messenger.vim'
  use 'junegunn/vim-easy-align'
  use 'MarcWeber/vim-addon-mw-utils'
  use 'christoomey/vim-sort-motion'
  use 'christoomey/vim-system-copy'
  use 'ctrlpvim/ctrlp.vim'
  use 'ervandew/supertab'
  use 'garbas/vim-snipmate'
  use 'honza/vim-snippets'
  use 'jiangmiao/auto-pairs'
  use 'kana/vim-textobj-entire'
  use 'kana/vim-textobj-line'
  use 'kana/vim-textobj-user'
  use 'michaeljsmith/vim-indent-object'
  use 'scrooloose/nerdtree'
  use 'terryma/vim-multiple-cursors'
  use 'tomasr/molokai'
  use 'tomlion/vim-solidity'
  use 'tomtom/tlib_vim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-dispatch'
  use 'sbdchd/neoformat'

  use 'marko-cerovac/material.nvim'
  require('material').setup()

  -- general dev
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-compe'
  use 'scrooloose/nerdcommenter' -- commenting shortcuts

  -- search
  use 'mileszs/ack.vim'
  use { 'junegunn/fzf', run = './install --bin', }
  use 'junegunn/fzf.vim'
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  use 'tpope/vim-eunuch' -- wrappers UNIX commands
  use 'tpope/vim-surround' -- surround characters shortcuts
  use 'tpope/vim-vinegar' -- file browser
  use 'kyazdani42/nvim-web-devicons' -- icons when searching

  -- testing
  use 'kassio/neoterm' -- terminal wrapper
  use 'janko-m/vim-test' -- testing commands

  -- javascript
  use { 'HerringtonDarkholme/yats.vim', ft = 'typescript' }
  use { 'posva/vim-vue' } -- Vue highlighting
  use 'othree/javascript-libraries-syntax.vim'

  -- python
  use { 'Vimjas/vim-python-pep8-indent', ft = 'python' }

  -- ruby
  use { 'tpope/vim-rails', ft = 'ruby' }
  use { 'ecomba/vim-ruby-refactoring', ft = 'ruby' }
  use { 'vim-ruby/vim-ruby' }

  -- elixir
  use { 'elixir-lang/vim-elixir', ft = 'elixir' }
  use { 'mattreduce/vim-mix', ft = 'elixir' }
  use { 'slashmili/alchemist.vim', ft = 'elixir' }

  -- go
  use { 'fatih/vim-go' }

  -- dart
  use { 'dart-lang/dart-vim-plugin' }

  -- rust
  use { 'rust-lang/rust.vim' }
end)