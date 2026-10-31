-- Render markdown in the buffer. Toggle with <leader>mr.
vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }
-- render_modes = true keeps rendering in insert mode, so edits show while typing.
require('render-markdown').setup { render_modes = true }

vim.keymap.set('n', '<leader>mr', '<cmd>RenderMarkdown toggle<cr>', { desc = '[M]arkdown [R]ender toggle' })
