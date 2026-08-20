local map = require('settings.utils').map
vim.g.mapleader = " "
map('n', '<F7>', ':so ~/.config/nvim/init.lua<CR>', opts)
map('n', '<C-i>', ':w<CR>', opts)
map('n', '<C-n>', ':bnext<CR>', opts)
map('n', '<C-p>', ':bprevious<CR>', opts)
map('n', '<C-h>', ':bd<CR>', opts)
map('n', '<C-r>', '<cmd>CHADopen<CR>', opts)
map('n', '<C-l>', ':LazyGit', opts)
map('n', '<C-f>', ':FloatermKill', opts)
