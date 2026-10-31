-- Close a file but keep its window, so neo-tree doesn't take over the full width: <leader>x.
vim.keymap.set('n', '<leader>x', function() require('mini.bufremove').delete() end, { desc = 'Close file, keep window' })
