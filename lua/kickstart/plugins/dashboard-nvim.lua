return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      config = {
        header = {
          '',
          '',
          '',
          '██   ██ ███████ ████████  ██████ ██   ██',
          '██  ██  ██         ██    ██      ██   ██',
          '█████   █████      ██    ██      ███████',
          '██  ██  ██         ██    ██      ██   ██',
          '██   ██ ███████    ██     ██████ ██   ██',
          '',
          '',
          '',
        },
        center = {
          { icon = '  ', desc = 'New file', action = 'enew' },
          { icon = '  ', desc = 'Find file               ', key = 'Space + f', action = 'Telescope find_files' },
          { icon = '  ', desc = 'Recent files            ', key = 'Space + h', action = 'Telescope oldfiles' },
          { icon = '  ', desc = 'Find Word               ', key = 'Space + g', action = 'Telescope live_grep' },
        },
        footer = {},
      },
      hide = {
        statusline = false,
        tabline = false,
        winbar = false,
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
