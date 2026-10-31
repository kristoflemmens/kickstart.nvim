-- Open neo-tree on startup, keeping focus on the file. Skipped for diffs, git messages and headless runs.
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    if #vim.api.nvim_list_uis() == 0 or vim.o.diff then return end
    if vim.tbl_contains({ 'gitcommit', 'gitrebase' }, vim.bo.filetype) then return end
    vim.cmd 'Neotree show'
  end,
})
