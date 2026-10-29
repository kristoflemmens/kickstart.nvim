-- lazygit (Homebrew) in a floating window: <leader>gg, like VS Code's git panel.
vim.pack.add { 'https://github.com/kdheepak/lazygit.nvim' }

vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'Lazy[G]it' })
