local map = vim.api.nvim_set_keymap

-- ================================ GLOBAL ====================================

-- ================================ NORMAL ====================================
-- Split navigation
map('n', '<C-h>', '<C-w>h', {silent = true})
map('n', '<C-j>', '<C-w>j', {silent = true})
map('n', '<C-k>', '<C-w>k', {silent = true})
map('n', '<C-l>', '<C-w>l', {silent = true})

-- Buffer navigation
map('n', '<TAB>', ':BufferPrevious<CR>', {noremap = true, silent = true})
map('n', '<C-TAB>', ':BufferNext<CR>', {noremap = true, silent = true})

-- File navigation
map('n', '<C-y>', '3<C-y>', {noremap = true, silent = true})
map('n', '<C-e>', '3<C-e>', {noremap = true, silent = true})

-- Resizing
map('n', '<C-Up>', ':resize +2<CR>', {noremap = true, silent = true})
map('n', '<C-Down>', ':resize -2<CR>', {noremap = true, silent = true})
map('n', '<C-Right>', ':vert resize +2<CR>', {noremap = true, silent = true})
map('n', '<C-Left>', ':vert resize -2<CR>', {noremap = true, silent = true})

-- LSP
map('n', 'K', ':Lspsaga hover_doc<CR>', {noremap = true, silent = true})
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true, silent = true})
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true, silent = true})
map('n', 'gR', '<cmd>LspTrouble lsp_references<CR>', {noremap = true, silent = true})
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true, silent = true})
map('n', 'ca', ':Lspsaga code_action<CR>', {noremap = true, silent = true})
-- map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap=true, silent=true })
map('n', '<C-p>', ':Lspsaga diagnostic_jump_prev<CR>', {noremap = true, silent = true})
map('n', '<C-n>', ':Lspsaga diagnostic_jump_next<CR>', {noremap = true, silent = true})
-- scroll down hover doc or scroll in definition preview
map('n', '<Down>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>', {noremap = true, silent = true})
-- scroll up hover doc
map('n', '<Up>', '<cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>', {noremap = true, silent = true})

-- ================================ INSERT ====================================

-- ================================ VISUAL ====================================
-- Indenting
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})

-- Move line
map('v', 'K', ':m \'>-2<CR>gv-gv', {noremap = true, silent = true})

-- =============================== TERMINAL ===================================
map('t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = true})

-- ================================ UNMAP =====================================
map('n', 'Q', '<NOP>', {noremap = true, silent = true})
