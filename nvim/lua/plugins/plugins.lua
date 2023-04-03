return require('packer').startup(function(use)
    -- appearance        
    use "rebelot/kanagawa.nvim"
    use 'Mofiqul/dracula.nvim' -- dracula theme
    use 'nvim-tree/nvim-web-devicons' -- pretty icons
    use 'nvim-lualine/lualine.nvim' -- status line
    use 'goolord/alpha-nvim' -- dashboard
    use 'lewis6991/gitsigns.nvim'
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- file exploler
    use 'nvim-tree/nvim-tree.lua' -- sidebar with exploler

    -- code formating tools
    use "windwp/nvim-autopairs" -- autoclose brackets and quote marks
    use "terrortylor/nvim-comment" -- easy way to comment many lines

    -- telescope
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- lsp
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use "williamboman/mason.nvim"

    -- plugin installer
    use 'wbthomason/packer.nvim' -- my plugin installer
    if packer_bootstrap then
        require('packer').sync()
    end
end)
