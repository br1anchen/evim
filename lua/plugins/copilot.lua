vim.api.nvim_set_keymap('i', '<C-F>', 'copilot#Accept("<CR>")', {silent = true, script = true, expr = true})
vim.cmd("let g:copilot_no_tab_map = v:true")
