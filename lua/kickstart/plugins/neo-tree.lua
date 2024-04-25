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
    { '<leader>ee', ':Neotree source=filesystem reveal=true position=left<CR>', { desc = 'NeoTree reveal' } },
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
          ['<leader>ee'] = 'close_window',
        },
      },
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          -- '.git',
          -- '.DS_Store',
          -- 'thumbs.db',
        },
        never_show = {},
      },
    },
  },
}
