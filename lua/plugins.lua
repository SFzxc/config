-- local on_attach = function(client, bufnr)
--   -- Enable completion triggered by <c-x><c-o>
--   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
-- end

return require('packer').startup(function(use)
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
  use 'preservim/nerdtree'
  use 'terryma/vim-multiple-cursors'
  use 'tomasr/molokai'
  use 'tomlion/vim-solidity'
  use 'tomtom/tlib_vim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-dispatch'
  use 'sbdchd/neoformat'

  use 'Mofiqul/dracula.nvim'
  use 'yuttie/hydrangea-vim'

  -- general dev
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'kabouzeid/nvim-lspinstall'
  }
  require("mason").setup()
  -- require("mason-lspconfig").setup({})
  require('lspconfig').tsserver.setup{}
  require'lspconfig'.ruby_ls.setup {}
  require'lspconfig'.solidity.setup {}

  use 'glepnir/lspsaga.nvim'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'scrooloose/nerdcommenter' -- commenting shortcuts
  use 'mattn/emmet-vim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  -- require("prettier").setup()
  -- require("null-ls").setup({
  --   sources = {
  --     require("null-ls").builtins.formatting.stylua,
  --     require("null-ls").builtins.diagnostics.eslint,
  --     require("null-ls").builtins.completion.spell,
  --   },
  -- })

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
