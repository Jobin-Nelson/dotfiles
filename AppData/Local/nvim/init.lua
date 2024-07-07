-- Options
HOME = os.getenv('HOME')
vim.opt.mouse = 'a'
vim.opt.clipboard:append('unnamedplus')
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.sidescrolloff = 10
vim.opt.scrolloff = 8
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.path:append('**')
vim.opt.wildmenu = true
vim.opt.wildignore:append{'*/venv/*', '*/node_modules/*'}
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.signcolumn = 'yes'
vim.opt.termguicolors = true

-- Keymaps
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent = true})
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>i', '<cmd>edit ~\\AppData\\local\\nvim\\init.lua<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>Lexplore 20<CR>')
vim.keymap.set('n', '<C-Up>', '<cmd>resize +3<CR>')
vim.keymap.set('n', '<C-Down>', '<cmd>resize -3<CR>')
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +3<CR>')
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -3<CR>')
vim.keymap.set('n', 'L', '<cmd>bnext<CR>')
vim.keymap.set('n', 'H', '<cmd>bprevious<CR>')
vim.keymap.set('v', 'p', '"_dP')
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

vim.cmd('autocmd FileType python nnoremap <F5> <cmd>w <bar> !python %<CR>')
vim.cmd('autocmd FileType javascript nnoremap <F5> <cmd>w <bar> !node %<CR>')

