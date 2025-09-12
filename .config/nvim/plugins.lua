return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'
	use 'ThePrimeagen/vim-be-good'
	vim.cmd [[colorscheme tokyonight-moon]]
end)
