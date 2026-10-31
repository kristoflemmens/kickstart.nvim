-- Thin vertical line at column 80 in markdown files, matching markdownlint's MD013 limit.
-- virt-column draws 'colorcolumn' as a character instead of a full highlighted cell.
vim.pack.add { 'https://github.com/lukas-reineke/virt-column.nvim' }
require('virt-column').setup { char = '│' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function() vim.opt_local.colorcolumn = '80' end,
})
