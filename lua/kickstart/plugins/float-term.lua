return {
  'voldikss/vim-floaterm', -- Float terminal added 23/04/2024 Not actuall sure if this will work
  config = function()
    vim.keymap.set('n', '<F1>', ':FloatermToggle<CR>')
    vim.keymap.set('t', '<F1>', '<C-\\><C-n>:FloatermToggle<CR>')
  end,
}
