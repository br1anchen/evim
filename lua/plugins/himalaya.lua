vim.g['himalaya_mailbox_picker'] = 'telescope'
vim.g['himalaya_telescope_preview_enabled'] = 1

-- Need to load rtp mannually than through packer
-- https://github.com/wbthomason/packer.nvim/issues/274#issuecomment-814019438
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/himalaya/vim'
vim.o.runtimepath = vim.o.runtimepath .. ',' .. install_path

