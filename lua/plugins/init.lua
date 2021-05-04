local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

-- Autocompile
vim.cmd 'autocmd BufWritePost init.lua PackerCompile'

return require('packer').startup(function(use)
    -- Package Manager
    use 'wbthomason/packer.nvim'
    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'kabouzeid/nvim-lspinstall'
    use 'hrsh7th/nvim-compe'
    use 'SirVer/ultisnips'
    use 'folke/lsp-trouble.nvim'
    use "onsails/lspkind-nvim"
    -- Navigation
    use 'kyazdani42/nvim-tree.lua'
    use "kevinhwang91/rnvimr"
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    -- Convenience
    use 'folke/which-key.nvim'
    use 'windwp/nvim-autopairs'
    use 'terrortylor/nvim-comment'
    use 'kevinhwang91/nvim-bqf'
    use {'iamcco/markdown-preview.nvim', run = ':call mkdp#util#install()'}
    use 'norcalli/nvim-colorizer.lua'
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-surround'
    use 'justinmk/vim-sneak'
    use 'akinsho/nvim-toggleterm.lua'
    use 'kdheepak/lazygit.nvim'
    use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}
    -- Debugging
    use 'mfussenegger/nvim-dap'
    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use "windwp/nvim-ts-autotag"
    -- Icons
    use "kyazdani42/nvim-web-devicons"
    -- Status Line and Bufferline
    use "glepnir/galaxyline.nvim"
    use "romgrk/barbar.nvim"
    -- Theming
    use 'arcticicestudio/nord-vim'
    use 'rakr/vim-two-firewatch'
    use "arzg/vim-colors-xcode"
    use 'folke/lsp-colors.nvim'

    use 'glepnir/dashboard-nvim'

    use 'pwntester/octo.nvim'
end)
