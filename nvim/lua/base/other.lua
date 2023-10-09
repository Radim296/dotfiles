local opt = vim.opt
opt.splitright = true
opt.splitbelow = true

opt.clipboard = 'unnamedplus'
opt.swapfile = false

opt.fixeol = false

opt.completeopt = 'menuone,noselect'

vim.cmd [[set nowrap]]
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

opt.title = true
