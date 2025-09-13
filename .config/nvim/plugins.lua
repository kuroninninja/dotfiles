return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use 'folke/tokyonight.nvim'
    use 'ThePrimeagen/vim-be-good'
    vim.cmd [[colorscheme rose-pine]]
end)
