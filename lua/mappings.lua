local vim = vim
local api = vim.api

function map(mode, shortcut, command)
  api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

-- nnoremap <cr> :noh<CR><CR>:<backspace> " Hide matched search after done
api.nvim_set_keymap('n', '<cr>', ':noh<CR><CR>:<backspace>', { noremap = true })

-- remap j and k to move across display lines and not real lines
api.nvim_set_keymap("n", "k", "gk", { noremap = true })
api.nvim_set_keymap("n", "gk", "k", { noremap = true })
api.nvim_set_keymap("n", "j", "gj", { noremap = true })
api.nvim_set_keymap("n", "gj", "j", { noremap = true })

-- avoid mistyping commands
vim.cmd([[
	command! Bd bd
	command! W w
	command! Wq wq
]])

-- Disable some keys
nmap('<Up>', '<NOP>')
nmap('<Down>', '<NOP>')
nmap('<Left>', '<NOP>')
nmap('<Right>', '<NOP>')

-- Move to beginning/end of line
nmap('$', '<NOP>')
nmap('^', '<NOP>')
nmap('B', '^')
nmap('E', '$')

-- Removing escape
map('i', 'jj', '<esc>')
map('c', 'jj', '<c-c>')
map('v', 'v', '<esc>')

-- Opens and closes Nerdtree with ,q
-- map('!', '<Tab><Tab>', ':NERDTreeToggle<CR>')
api.nvim_set_keymap("n", "<Tab><Tab>", ":NERDTreeToggle<CR>", { noremap = true })
