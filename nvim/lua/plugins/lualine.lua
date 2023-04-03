require('lualine').setup {
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  options = {
      disabled_filetypes = {"NvimTree", "alpha", "packer"},
  },
  sections = {
    lualine_a = {},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
