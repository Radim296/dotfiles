vim.g.mapleader = ' '
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set


-- vim.keymap.set('n', 'H', ':tabprev<CR>')
-- vim.keymap.set('n', 'L', ':tabnext<CR>')

vim.keymap.set('n', 'H', ':bp<CR>')
vim.keymap.set('n', 'L', ':bn<CR>')

vim.keymap.set('n', '<Tab>[', ':bp<CR>')

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)

-- -- Resize with arrows
-- keymap("n", "<C-Up>", ":resize +2<CR>", opts)
-- keymap("n", "<C-Down>", ":resize -2<CR>", opts)
-- keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "p", '"_dP', opts)
