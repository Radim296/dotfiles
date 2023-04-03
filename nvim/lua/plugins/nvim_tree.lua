-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
local ntree = require('nvim-tree')

-- OR setup with some options
ntree.setup({
    auto_reload_on_write = true, 
    -- sort_by = "case_sensitive",
    renderer = {
    group_empty = true,
    },
    filters = {
    dotfiles = true,
    },
    git = {
        enable = true,
      ignore = false,
      timeout = 500,
    }
})
ntree.sync_root_with_cwd = true
