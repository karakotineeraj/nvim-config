local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	'wbthomason/packer.nvim',
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'neovim/nvim-lspconfig',

	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-nvim-lua',
	'hrsh7th/cmp-nvim-lsp-signature-help',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-buffer',
	'hrsh7th/vim-vsnip',

	{ 'kyazdani42/nvim-web-devicons', lazy = true },

	'nvim-tree/nvim-tree.lua',

	'folke/tokyonight.nvim',
	{
		'navarasu/onedark.nvim',
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	'morhetz/gruvbox',

	{
		'nvim-treesitter/nvim-treesitter',
		build = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	},

	{
		'nvim-telescope/telescope.nvim', version = '0.1.0',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	'nvim-lualine/lualine.nvim',
})

