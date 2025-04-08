vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	vim.opt.termguicolors = true
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'gruvbox-community/gruvbox'
	use 'Shatur/neovim-ayu'
	use ({'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end	})
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use 'nvim-treesitter/playground'
	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
	use ('jiangmiao/auto-pairs')
	use ('cacharle/c_formatter_42.vim')
	use ('42Paris/42header')
	use ({
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x', -- Ensure you're using the latest v2 branch
		requires = {
			'neovim/nvim-lspconfig',       -- LSP Config
			'williamboman/mason.nvim',     -- Mason for managing LSP servers
			'williamboman/mason-lspconfig.nvim', -- Integration between Mason and LSPConfig
			'hrsh7th/nvim-cmp',            -- Completion plugin
			'hrsh7th/cmp-nvim-lsp',        -- LSP source for nvim-cmp
			'L3MON4D3/LuaSnip',            -- Snippet engine
		}
	})
end)
