return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ 'catppuccin/nvim', as = 'catppuccin' })
    use 'folke/tokyonight.nvim'
    use 'ThePrimeagen/vim-be-good'
    vim.cmd [[colorscheme catppuccin]]
    use("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})
    use 'kyazdani42/nvim-web-devicons'
    use({
        "NTBBloodbath/galaxyline.nvim",
        -- your statusline
        config = function()
            require("galaxyline.themes.eviline")
        end,
        -- some optional icons
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    })
end)
