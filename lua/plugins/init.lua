local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

-- Autocompile
vim.cmd 'autocmd BufWritePost init.lua PackerCompile'

return require('packer').startup(function(use)
    -- Make packer manage itself
    use 'wbthomason/packer.nvim'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    -- Autocomlete
    use 'windwp/nvim-autopairs'
    use 'terrortylor/nvim-comment'
    -- Telescope
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
	-- QuickFix
    use 'kevinhwang91/nvim-bqf'
    -- Debugger
    use 'mfussenegger/nvim-dap'
    -- File explorer
    use 'kyazdani42/nvim-tree.lua'
    -- Git
    use 'lewis6991/gitsigns.nvim'
    -- Statusline
    use 'glepnir/galaxyline.nvim'
    use 'romgrk/barbar.nvim'
    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    -- Colorizer
    use 'norcalli/nvim-colorizer.lua'
    -- Dashboard
    use 'glepnir/dashboard-nvim'
    -- Themes
    use 'ajmwagar/vim-deus'
end)
