-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree source=filesystem reveal=true position=left<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    source_selector = {
      sources = {
        { source = 'filesystem' },
        { source = 'git_status' },
        { source = 'buffers' },
        { source = 'document_symbols' },
      },
    },
    window = {
      mappings = {
        ['<tab>'] = 'toggle_node',
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}