vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', version = '*',
		requires = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		}
	}
	use 'Yazeed1s/oh-lucy.nvim'
	use({
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate'
	})
	use("tpope/vim-fugitive")
	use{
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			{'neovim/nvim-lspconfig', tag= 'v2.8.0', pin = true },
			{'williamboman/mason-lspconfig.nvim'},
			{'mason-org/mason.nvim'},

			-- Auto completion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
	use {
		"folke/lua-dev.nvim",
		config = function()
			require("lua-dev").setup({
				-- library = { vimruntime = true, types = true, plugins = true },
			})
		end
	}
end)

