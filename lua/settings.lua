local fn = vim.fn

HOME = os.getenv("HOME")

vim.g.mapleader = ','

-- basic settings
vim.o.encoding = "utf-8"
vim.o.background = "dark"
vim.o.clipboard = "unnamedplus"
vim.o.completeopt = "noinsert,menuone,noselect"
vim.o.hidden = true
vim.o.inccommand = "split"
vim.o.mouse = "a"
vim.o.number = true
vim.o.relativenumber = true
vim.o.title = true
vim.o.ttimeoutlen = 0
vim.o.autoread = true
vim.o.showcmd = true
vim.o.autoindent = true                      -- Auto indention should be on
vim.wo.wrap = false
vim.o.lazyredraw = true
vim.o.incsearch = true
vim.o.smartcase = true
vim.o.laststatus = 2
vim.o.noshowmatch = true
vim.o.termguicolors = true
vim.o.nobackup = true
vim.o.nowritebackup = true
vim.o.belloff = "all" -- Off shit bell
vim.o.nocompatible = true -- Use VIM settings rather than Vi settings; this *must* be first in .vimrc
vim.o.encoding = "UTF-8"
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

-- Commands mode
vim.o.wildmenu = true -- on TAB, complete options for system command
vim.o.wildignore = 'deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc'

-- Search settings
vim.api.nvim_exec([[
	hi Search cterm=NONE
	hi Search ctermbg=Grey
	hi Search ctermfg=NONE
]], false)

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
	let g:NERDTreeNodeDelimiter = "\u00a0"
	let g:snipMate = { 'snippet_version' : 1 }
]])

-- The Silver Searcher
if (fn.executable('ag') ~= 0) then
	vim.env.FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore venv/ --ignore coverage/ --ignore node_modules/ --ignore target/  --ignore __pycache__/ --ignore dist/ --ignore build/ --ignore .DS_Store  -g ""'
	vim.o.grepprg = "ag --nogroup --nocolor"
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
