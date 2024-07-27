-- Options
vim.opt.mouse = 'a'
vim.opt.clipboard:append('unnamedplus')
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
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
vim.opt.cursorline = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.smoothscroll = true
vim.opt.laststatus = 3
vim.opt.winbar = '%=%m %t'
vim.opt.smartindent = true
vim.opt.undodir = vim.fn.stdpath('config') .. '\\undodir'
vim.opt.undofile = true
vim.opt.sessionoptions = 'curdir,folds,globals,help,tabpages,terminal,winsize'
vim.opt.formatoptions = vim.opt.formatoptions
  - "a" -- Auto formatting is BAD.
  - "t" -- Don't auto format my code. I got linters for that.
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore
vim.g.markdown_folding = 1
vim.opt.pumheight = 10
vim.opt.conceallevel = 2

-- Set powershell as default shell
-- vim.opt.shell = 'pwsh.exe'
-- vim.opt.shellcmdflag='-NoLogo -NoProfile -Command'
-- vim.opt.shellquote= ''
-- vim.opt.shellxquote = ''

-- Keymaps
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent = true})
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>i', '<cmd>edit ~\\AppData\\local\\nvim\\init.lua<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>Lexplore 20<CR>')
vim.keymap.set('n', '<leader>E', '<cmd>Lexplore %:h<CR>')
vim.keymap.set('n', '<C-Up>', '<cmd>resize +3<CR>')
vim.keymap.set('n', '<C-Down>', '<cmd>resize -3<CR>')
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +3<CR>')
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -3<CR>')
vim.keymap.set('v', 'P', '"_dP')
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('n', '<leader>cs', '<cmd>lcd ~/playground/projects/second_brain/<cr>')

-- AutoCommands
vim.api.nvim_create_autocmd('FileType', {
    callback = function()
        vim.api.nvim_buf_set_keymap(0, 'n', '<leader>cr', '<cmd>update <bar> !python3 %<CR>', { desc = 'Run Python' })
    end,
    group = vim.api.nvim_create_augroup('PythonOptions', { clear = true }),
    pattern = 'python',
})

vim.api.nvim_create_autocmd('FileType', {
    callback = function()
      vim.opt_local.wrap = true
      vim.opt_local.linebreak = true
      vim.opt.foldenable = false
    end,
    group = vim.api.nvim_create_augroup('MarkdownOptions', { clear = true }),
    pattern = 'markdown',
})

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = vim.api.nvim_create_augroup('YankHighlight', { clear = true }),
    pattern = '*',
})


-- Highlights
vim.api.nvim_set_hl(0, 'Normal', {
    bg = 'None',
    ctermbg = 'None',
})

-- Disabled
vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0
