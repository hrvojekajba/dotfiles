-- disable newtr
vim.g.loaded_netrw = 1
vim.g.loaded_newrwPlugin = 1
-- remove tilde from empty lines
vim.opt.fillchars = { eob = " " }
--- KEYMAPS ---
-- use space as leader
vim.g.mapleader = ' '
-- yank into system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y"') -- yank motion
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y"') -- yank line
-- paste from system clipboard
vim.keymap.set('n', '<leader>p', '"+p"')          -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P"')          -- paste before cursor

-- COMMON SETTINGS
vim.o.number = true
vim.o.relativenumber = false
vim.o.signcolumn = 'yes'
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.wrap = false
-- diagnostics
vim.diagnostic.config({ virtual_text = false })

-- LAZY PACKAGE MANAGER CONFIGRATION
require("config.lazy")

-- set telescope keybindings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- call mini.pairs for autoclosing
require('mini.pairs').setup()

-- set colorscheme
-- vim.cmd("colorscheme kanso")
vim.cmd("colorscheme kanagawa-dragon")

-- load nvim-tree
require("nvim-tree").setup()
vim.keymap.set('n', '<leader>e', ":NvimTreeToggle<CR>", { noremap = true })

-- load mason.nvim
require("mason").setup()

-- load lualine.nvim
require("lualine").setup()

-- tiny-inline-diagnostic
require("tiny-inline-diagnostic").setup({
	preset = "minimal",
	transparent_bg = true,
})
