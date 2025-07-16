vim.g.loaded_netrw = 1
vim.g.loaded_newrwPlugin = 1
--- KEYMAPS ---
-- use space as leader
vim.g.mapleader = ' ' 
-- yank into system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y"') -- yank motion
vim.keymap.set({'n','v'}, '<leader>Y', '"+Y"') -- yank line
-- paste from system clipboard
vim.keymap.set('n', '<leader>p', '"+p"') -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P"') -- paste before cursor

-- COMMON SETTINGS
vim.o.number = true
vim.o.relativenumber = false
vim.o.signcolumn = 'yes'
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.wrap = false

-- LAZY PACKAGE MANAGER CONFIGRATION
require("config.lazy")

-- treesitter
require("lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})

-- set telescope keybindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- call mini.pairs for autoclosing
require('mini.pairs').setup()

-- set colorscheme
vim.cmd("colorscheme kanso")

-- load nvim-tree
require("nvim-tree").setup()
vim.keymap.set('n', '<leader>e', ":NvimTreeToggle<CR>", { noremap = true })
