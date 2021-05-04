vim.cmd('luafile ~/.config/nvim/settings.lua')
require('plugins')
require('keymap')
require('settings')
require('functions')
require('auto')
require('colors')

-- LSP
require('lsp')
require('lsp.lua')
require('lsp.latex')
require('lsp.bash')
require('lsp.vim')
require('lsp.efm')
require('lsp.js-ts')
require('lsp.json')
require('lsp.rust')

if Python.useKite then
    require('lsp.kite')
else
    require('lsp.python')
end

-- Plugin configs
require('plugins.autopairs')
require('plugins.colorizer')
require('plugins.comment')
require('plugins.compe')
require('plugins.dashboard')
require('plugins.galaxyline')
require('plugins.gitsigns')
require('plugins.markdown-preview')
require('plugins.telescope')
require('plugins.toggleterm')
require('plugins.treesitter')
require('plugins.ultisnips')
require('plugins.whichkey')
require('plugins.nvim-tree')
require('plugins.lsp-trouble')
require('plugins.octo')
