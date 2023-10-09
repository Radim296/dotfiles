return require('packer').startup(function(use)
    -- appearance        
    use "rebelot/kanagawa.nvim"
    use 'Mofiqul/dracula.nvim' -- dracula theme
    use 'nvim-tree/nvim-web-devicons' -- pretty icons
    use 'nvim-lualine/lualine.nvim' -- status line
    use 'goolord/alpha-nvim'
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'chikko80/error-lens.nvim',
        requires = {'nvim-telescope/telescope.nvim'}
    }

    require("error-lens").setup({
        -- your options go here
    })
    use {
      'rmagatti/session-lens',
      requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
      config = function()
        require('session-lens').setup({--[[your custom config--]]})
      end
    }
    -- file exploler
    use 'nvim-tree/nvim-tree.lua' -- sidebar with exploler
    use {
      "ahmedkhalf/project.nvim",
      config = function()
        require("project_nvim").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }

    -- code formating tools
    use "windwp/nvim-autopairs" -- autoclose brackets and quote marks
    use "terrortylor/nvim-comment" -- easy way to comment many lines

    -- telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

      -- autocompletion
    use("hrsh7th/nvim-cmp") -- completion plugin
    use("hrsh7th/cmp-buffer") -- source for text in buffer
    use("hrsh7th/cmp-path") -- source for file system paths

    -- snippets
    use("L3MON4D3/LuaSnip") -- snippet engine
    use("saadparwaiz1/cmp_luasnip") -- for autocompletion
    use("rafamadriz/friendly-snippets") -- useful snippets

    -- lsp
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use "williamboman/mason.nvim"

    use {
      'rmagatti/auto-session',
      config = function()
        require("auto-session").setup {
          log_level = "error",
          auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
        }
      end
    }
    -- plugin installer
    use 'wbthomason/packer.nvim' -- my plugin installer
    if packer_bootstrap then
        require('packer').sync()
    end
end)
