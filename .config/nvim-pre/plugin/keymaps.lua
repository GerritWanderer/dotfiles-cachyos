local map = vim.keymap.set
-- Ctrl+S to save file
map('n', '<C-s>', '<cmd>w<cr>', { desc = 'Save file' })
map('i', '<C-s>', '<esc><cmd>w<cr>', { desc = 'Save file from insert mode' })

-- Leader+qq to quit Neovim
map('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit Neovim' })

-- snacks keymaps
map('n', '<leader>e', function() Snacks.explorer() end, { desc = 'Open Explorer' })
map('n', '<leader><space>', function() Snacks.picker.smart() end, { desc = 'Open Picker' })

-- bufferline keymaps
map('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev buffer' })
map('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer' })
