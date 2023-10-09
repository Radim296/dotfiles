vim.g.mapleader = ' '
local opts = { noremap = true, silent = true }

---- nvimtree
vim.keymap.set('n', '<leader>v', ':NvimTreeToggle<CR>', opts)

---- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fr', ':Telescope session-lens search_session<CR>', opts)

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fp', builtin.oldfiles, {})

---- alpha
vim.keymap.set("n", "<leader>a", ":Alpha<CR>", opts)
