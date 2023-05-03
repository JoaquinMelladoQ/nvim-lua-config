vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Key mappings
local keymap_options = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<leader>s', '<Plug>(easymotion-s2)', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>nt', ':NERDTreeFind<CR>', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>ex', ':ex.<CR>', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>t', ':normal! <C-d><CR>', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>u', '<C-u><CR>', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>;', '<C-C-S-^><CR>', keymap_options)

-- Move single line
vim.api.nvim_set_keymap('n', '<C-k>', '[e', keymap_options)
vim.api.nvim_set_keymap('n', '<C-j>', ']e', keymap_options)

-- Move multiple lines selected
vim.api.nvim_set_keymap('v', '<C-k>', '[egv', keymap_options)
vim.api.nvim_set_keymap('v', '<C-j>', ']egv', keymap_options)

-- Moving text with indentation
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<CR>gv=gv', keymap_options)
vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<CR>gv=gv', keymap_options)
vim.api.nvim_set_keymap('i', '<C-j>', '<esc>:m .+1<CR>==', keymap_options)
vim.api.nvim_set_keymap('i', '<C-k>', '<esc>:m .-2<CR>==', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>k', ':m .-2<CR>==', keymap_options)
vim.api.nvim_set_keymap('n', '<leader>j', ':m .+1<CR>==', keymap_options)

-- Configure the mapping for 'cc' to comment a piece of code
vim.api.nvim_set_keymap('n', '<leader>cc', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cu', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>cu', ':Commentary<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>cc', ':Commentary<CR>', { noremap = true, silent = true })

vim.o.autowrite = true
vim.o.laststatus = 2
vim.o.showmode = true
vim.o.synmaxcol = 200
vim.o.lazyredraw = true
vim.o.showcmd = true
vim.o.shiftwidth = 2
vim.o.mouse = 'a'
vim.o.cursorcolumn = false
vim.o.cursorline = false
vim.o.clipboard = 'unnamed'
vim.cmd('syntax enable')
vim.o.showmatch = true
vim.o.number = true
vim.o.modifiable = true
