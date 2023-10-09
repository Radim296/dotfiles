require("telescope").load_extension("session-lens")

require('telescope').setup {
  -- extensions = {
  --   project = {
  --     hidden_files = true, -- default: false
  --     sync_with_nvim_tree = true, -- default false
  --     on_project_selected = function(prompt_bufnr)
  --       project_actions.change_working_directory(prompt_bufnr, true)
  --       vim.cmd[[:SessionRestore<CR>]]
  --     end
  --   }
  -- },
  requires = { {'nvim-lua/plenary.nvim'} },
  tag = '0.1.1',
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  }
}
