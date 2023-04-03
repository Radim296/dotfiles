require('telescope').setup{
  tag = '0.1.1',
  requires = { {'nvim-lua/plenary.nvim'} },
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  }
}
