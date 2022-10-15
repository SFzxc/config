local fn = vim.fn
local o = vim.o
local wo = vim.wo

HOME = os.getenv("HOME")

vim.g.mapleader = ','

-- basic settings
o.background = "dark"
o.clipboard = "unnamedplus"
o.completeopt = "menu,noinsert,menuone"
o.hidden = true
o.inccommand = "split"
-- o.mouse = "a"
o.number = true
o.relativenumber = true
o.title = true
o.ttimeoutlen = 0
o.autoread = true
o.showcmd = true
o.autoindent = true                      -- Auto indention should be on
wo.wrap = false
o.lazyredraw = true
o.incsearch = true
o.smartcase = true
o.laststatus = 2
o.noshowmatch = true
o.termguicolors = true
o.nobackup = true
o.nowritebackup = true
o.belloff = "all" -- Off shit bell
o.encoding = "UTF-8"
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.incsearch = true
o.nocompatible = true
o.updatetime = 250
o.noswapfile = true

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Commands mode
o.wildmenu = true -- on TAB, complete options for system command
o.wildignore = 'deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc'

-- Search settings
vim.api.nvim_exec([[
	hi Search cterm=NONE
	hi Search ctermbg=Grey
	hi Search ctermfg=NONE
]], false)


--- Coloring ---------
-- vim.cmd[[colorscheme dracula]]
-- require('onedark').load()
-- o.background = "light" -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
-- vim.cmd[[colorscheme tokyonight]]
-- require('monokai').setup { palette = require('monokai').pro }
-- require('monokai').setup { palette = require('monokai').soda }
-- require('monokai').setup {}
o.background = "dark"
vim.cmd[[colorscheme  palenight]]

-- vim.api.nvim_exec([[
--   highlight Normal guibg=NONE ctermbg=NONE
--   highlight LineNr guibg=NONE ctermbg=NONE
--   set fillchars+=vert:\│
--   highlight WinSeparator gui=NONE guibg=NONE guifg=#444444 cterm=NONE ctermbg=NONE ctermfg=gray
--   highlight VertSplit gui=NONE guibg=NONE guifg=#444444 cterm=NONE ctermbg=NONE ctermfg=gray
-- ]], false)

-- Only show cursorline in the current window and in normal mode.
vim.cmd([[
  augroup cline
      au!
      au WinLeave * set nocursorline
      au WinEnter * set cursorline
      au InsertEnter * set nocursorline
      au InsertLeave * set cursorline
  augroup END
]])

-- Triger `autoread` when files changes on disk
-- https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
-- https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
vim.cmd([[
	autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
]])


-- Notification after file change
-- https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
vim.cmd([[
	autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
]])

vim.cmd([[
	autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4
]])

vim.cmd([[
  let loaded_matchparen = 1
  let NERDTreeAutoDeleteBuffer = 1
  let g:NERDTreeMinimalMenu=1
  let g:NERDTreeNodeDelimiter = "\u00a0"
  let g:snipMate = { 'snippet_version' : 1 }
]])

-- The Silver Searcher
if (fn.executable('ag') ~= 0) then
	vim.env.FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore venv/ --ignore coverage/ --ignore node_modules/ --ignore target/  --ignore __pycache__/ --ignore dist/ --ignore build/ --ignore .DS_Store  -g ""'
	o.grepprg = "ag --nogroup --nocolor"
	vim.cmd([[
		  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
		  let g:ctrlp_use_caching = 0
	]])
end

-- bind K to grep word under cursor
vim.api.nvim_set_keymap('n', 'K', ':Ag "\b<C-R><C-W>\b"<CR>:cw<CR>', { noremap = true, silent = true })

-- bind \ (backward slash) to grep shortcut
vim.cmd([[
	command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
]])

-- Close QuickFix Files List after selecting
vim.cmd([[
	autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>
]])

-- Fast search by \\
vim.api.nvim_set_keymap('n', '\\', ':Ag<SPACE>', { noremap = true, silent = true })

-- Enable emmet-vim just for html/css
vim.cmd([[
  let g:user_emmet_install_global = 0
  autocmd FileType html,css EmmetInstall
]])

vim.diagnostic.config({
  underline = false,
  signs = false,
})
