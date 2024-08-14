-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  vim.cmd.colorscheme('rose-pine')


  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
--  use {
--	  "windwp/nvim-autopairs",
--	  event = "InsertEnter",
--	  config = function()
--		  require("nvim-autopairs").setup {}
--	  end
--  }

  use('mbbill/undotree')
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
  use('tpope/vim-fugitive')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},

    -- Autocompletion
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-buffer'},
    }
    }
   use('windwp/nvim-ts-autotag')
   use('jose-elias-alvarez/null-ls.nvim')
   use('MunifTanjim/prettier.nvim')
   use {
    'goolord/alpha-nvim',
    }
end)
