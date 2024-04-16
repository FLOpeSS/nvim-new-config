-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself 
    -- Packer:
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
          'nvim-tree/nvim-web-devicons', -- optional
        },
  }

  use'ThePrimeagen/vim-be-good'

    use "savq/melange-nvim"
    -- use 'christoomey/vim-system-clipboard'
    use 'tiyn/tccs.nvim'
    -- use "savq/melange-nvim"
    use 'wbthomason/packer.nvim'
    -- use 'sainnhe/everforest'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

      use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
      -- use('nvimtokyonighttreesitter/playground')

  use 'folke/tokyonight.nvim'
  use "terrortylor/nvim-comment"

  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
              call(vim.cmd, 'MasonUpdate')
          end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}

    use({ 'rose-pine/neovim', as = 'rose-pine'})
    use ('ThePrimeagen/harpoon')

    use "fatih/vim-go"

    use ('windwp/nvim-ts-autotag')


    use {"jose-elias-alvarez/null-ls.nvim", 
        ft = "go",
        opts = function()
            return require "custom.config.nulls-ls"
        end,
    }

    use { "catppuccin/nvim", as = "catppuccin" }

end)

