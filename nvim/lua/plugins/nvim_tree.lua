-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
local ntree = require('nvim-tree')

-- OR setup with some options
ntree.setup({
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
      enable = true,
      update_root = true
    },
    auto_reload_on_write = true,

    renderer = {
    group_empty = true,
    },
    filters = {
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        custom = { '__pycache__', '.DS_Store' },
    },
    git = {
        enable = true,
      ignore = false,
      timeout = 500,
    }
})

ntree.sync_root_with_cwd = true
