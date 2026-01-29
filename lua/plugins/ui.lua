-- UI Plugins
-- Dashboard, bufferline, lualine, indent guides, notifications, animations

return {
  -- Dashboard with Arch Linux ASCII art
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- Define custom highlight groups for the gradient
      vim.api.nvim_set_hl(0, 'DashboardHeader1', { fg = '#0D47A1', bold = true })
      vim.api.nvim_set_hl(0, 'DashboardHeader2', { fg = '#1565C0', bold = true })
      vim.api.nvim_set_hl(0, 'DashboardHeader3', { fg = '#1976D2', bold = true })
      vim.api.nvim_set_hl(0, 'DashboardHeader4', { fg = '#1E88E5', bold = true })
      vim.api.nvim_set_hl(0, 'DashboardHeader5', { fg = '#42A5F5', bold = true })
      vim.api.nvim_set_hl(0, 'DashboardHeader6', { fg = '#64B5F6', bold = true })
      vim.api.nvim_set_hl(0, 'DashboardHeader7', { fg = '#90CAF9', bold = true })
      vim.api.nvim_set_hl(0, 'DashboardHeader8', { fg = '#1793D1', bold = true })

      require('dashboard').setup({
        theme = 'doom',
        config = {
          header = {
            '',
            '       ▄▄▄       ██▀███   ▄████▄   ██░ ██ ',
            '      ▒████▄    ▓██ ▒ ██▒▒██▀ ▀█  ▓██░ ██▒',
            '      ▒██  ▀█▄  ▓██ ░▄█ ▒▒▓█    ▄ ▒██▀▀██░',
            '      ░██▄▄▄▄██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒░▓█ ░██ ',
            '       ▓█   ▓██▒░██▓ ▒██▒▒ ▓███▀ ░░▓█▒░██▓',
            '       ▒▒   ▓▒█░░ ▒▓ ░▒▓░░ ░▒ ▒  ░ ▒ ░░▒░▒',
            '',
            '        ⚡ Keep It Simple, Stupid ⚡',
            '',
          },
          center = {
            {
              icon = '󰈞  ',
              icon_hl = 'Title',
              desc = 'Find File                       ',
              desc_hl = 'String',
              key = 'f',
              key_hl = 'Number',
              key_format = ' [%s]',
              action = 'Telescope find_files',
            },
            {
              icon = '󰊄  ',
              icon_hl = 'Title',
              desc = 'Recently Used Files             ',
              desc_hl = 'String',
              key = 'r',
              key_hl = 'Number',
              key_format = ' [%s]',
              action = 'Telescope oldfiles',
            },
            {
              icon = '󰈬  ',
              icon_hl = 'Title',
              desc = 'Find Word                       ',
              desc_hl = 'String',
              key = 'g',
              key_hl = 'Number',
              key_format = ' [%s]',
              action = 'Telescope live_grep',
            },
            {
              icon = '  ',
              icon_hl = 'Title',
              desc = 'Find Project                    ',
              desc_hl = 'String',
              key = 'p',
              key_hl = 'Number',
              key_format = ' [%s]',
              action = 'Telescope projects',
            },
            {
              icon = '  ',
              icon_hl = 'Title',
              desc = 'Configuration                   ',
              desc_hl = 'String',
              key = 'c',
              key_hl = 'Number',
              key_format = ' [%s]',
              action = 'edit ~/.config/nvim/init.lua',
            },
            {
              icon = '󰒲  ',
              icon_hl = 'Title',
              desc = 'Lazy Plugin Manager             ',
              desc_hl = 'String',
              key = 'l',
              key_hl = 'Number',
              key_format = ' [%s]',
              action = 'Lazy',
            },
            {
              icon = '󰏗  ',
              icon_hl = 'Title',
              desc = 'Update Plugins                  ',
              desc_hl = 'String',
              key = 'u',
              key_hl = 'Number',
              key_format = ' [%s]',
              action = 'Lazy update',
            },
            {
              icon = '  ',
              icon_hl = 'Title',
              desc = 'Cheatsheet                      ',
              desc_hl = 'String',
              key = 'h',
              key_hl = 'Number',
              key_format = ' [%s]',
              action = 'Cheatsheet',
            },
            {
              icon = '󰗼  ',
              icon_hl = 'Title',
              desc = 'Quit Neovim                     ',
              desc_hl = 'String',
              key = 'q',
              key_hl = 'Number',
              key_format = ' [%s]',
              action = 'qa',
            },
          },
          footer = function()
            local stats = require('lazy').stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
            local version = vim.version()
            local nvim_version = '  v' .. version.major .. '.' .. version.minor .. '.' .. version.patch
            return {
              '',
              '═══════════════════════════════════════════════════════════════════════',
              '',
              '  ⚡ Neovim' .. nvim_version .. '   󰒲 ' .. stats.loaded .. '/' .. stats.count .. ' plugins   󱐋 ' .. ms .. 'ms',
              '',
            }
          end,
        },
      })
    end,
  },

  -- Bufferline
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup({
        options = {
          mode = 'buffers',
          style_preset = require('bufferline').style_preset.default,
          themable = true,
          numbers = 'none',
          close_command = 'bdelete! %d',
          right_mouse_command = 'bdelete! %d',
          left_mouse_command = 'buffer %d',
          middle_mouse_command = nil,
          indicator = {
            icon = '▎',
            style = 'icon',
          },
          buffer_close_icon = '󰅖',
          modified_icon = '●',
          close_icon = '',
          left_trunc_marker = '',
          right_trunc_marker = '',
          max_name_length = 18,
          max_prefix_length = 15,
          truncate_names = true,
          tab_size = 18,
          diagnostics = 'nvim_lsp',
          diagnostics_update_in_insert = false,
          diagnostics_indicator = function(count, level, _, _)
            local icon = level:match('error') and ' ' or ' '
            return ' ' .. icon .. count
          end,
          offsets = {
            {
              filetype = 'neo-tree',
              text = '  File Explorer',
              highlight = 'Directory',
              separator = true,
            },
          },
          color_icons = true,
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          show_tab_indicators = true,
          show_duplicate_prefix = true,
          persist_buffer_sort = true,
          separator_style = 'thin',
          enforce_regular_tabs = false,
          always_show_bufferline = true,
          hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' },
          },
        },
      })

      -- Keymaps
      vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Previous buffer' })
      vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer' })
      vim.keymap.set('n', '<leader>bp', '<cmd>BufferLineTogglePin<cr>', { desc = '[B]uffer [P]in' })
      vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = '[B]uffer [D]elete' })
      vim.keymap.set('n', '<leader>bo', '<cmd>BufferLineCloseOthers<cr>', { desc = '[B]uffer Close [O]thers' })
      vim.keymap.set('n', '<leader>bl', '<cmd>BufferLineCloseLeft<cr>', { desc = '[B]uffer Close [L]eft' })
      vim.keymap.set('n', '<leader>br', '<cmd>BufferLineCloseRight<cr>', { desc = '[B]uffer Close [R]ight' })
    end,
  },

  -- Lualine - Custom Arch Linux theme
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local arch_theme = {
        normal = {
          a = { fg = '#1a1b26', bg = '#1793D1', gui = 'bold' },
          b = { fg = '#1793D1', bg = '#3b4261' },
          c = { fg = '#a9b1d6', bg = '#1a1b26' },
        },
        insert = {
          a = { fg = '#1a1b26', bg = '#9ece6a', gui = 'bold' },
          b = { fg = '#9ece6a', bg = '#3b4261' },
        },
        visual = {
          a = { fg = '#1a1b26', bg = '#bb9af7', gui = 'bold' },
          b = { fg = '#bb9af7', bg = '#3b4261' },
        },
        replace = {
          a = { fg = '#1a1b26', bg = '#f7768e', gui = 'bold' },
          b = { fg = '#f7768e', bg = '#3b4261' },
        },
        command = {
          a = { fg = '#1a1b26', bg = '#e0af68', gui = 'bold' },
          b = { fg = '#e0af68', bg = '#3b4261' },
        },
        inactive = {
          a = { fg = '#a9b1d6', bg = '#1a1b26' },
          b = { fg = '#a9b1d6', bg = '#1a1b26' },
          c = { fg = '#a9b1d6', bg = '#1a1b26' },
        },
      }

      require('lualine').setup({
        options = {
          theme = arch_theme,
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          globalstatus = true,
          disabled_filetypes = {
            statusline = { 'dashboard', 'alpha' },
          },
        },
        sections = {
          lualine_a = {
            {
              'mode',
              fmt = function(str)
                local mode_icons = {
                  NORMAL = ' ',
                  INSERT = ' ',
                  VISUAL = '󰒉 ',
                  ['V-LINE'] = '󰒉 ',
                  ['V-BLOCK'] = '󰒉 ',
                  REPLACE = ' ',
                  COMMAND = ' ',
                  TERMINAL = ' ',
                }
                return (mode_icons[str] or '') .. str
              end,
            },
          },
          lualine_b = {
            { 'branch', icon = '' },
            {
              'diff',
              symbols = { added = ' ', modified = ' ', removed = ' ' },
              colored = true,
            },
          },
          lualine_c = {
            {
              'filename',
              path = 1,
              symbols = {
                modified = ' ●',
                readonly = ' ',
                unnamed = '[No Name]',
                newfile = ' ',
              },
            },
          },
          lualine_x = {
            {
              'diagnostics',
              sources = { 'nvim_diagnostic' },
              symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰌶 ' },
            },
            {
              function()
                local status = vim.g.copilot_enabled
                if status == false then
                  return '󰚩 Off'
                else
                  return '󰚩 On'
                end
              end,
              cond = function()
                return vim.g.loaded_copilot ~= nil
              end,
            },
            { 'encoding' },
            { 'fileformat', symbols = { unix = ' ', dos = ' ', mac = ' ' } },
            { 'filetype', icon_only = false },
          },
          lualine_y = {
            { 'progress' },
          },
          lualine_z = {
            { 'location' },
            {
              function()
                return '  ' .. os.date('%H:%M')
              end,
            },
          },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {},
        },
        extensions = { 'neo-tree', 'lazy', 'trouble', 'quickfix' },
      })
    end,
  },

  -- Notifications
  {
    'rcarriga/nvim-notify',
    config = function()
      require('notify').setup({
        background_colour = '#000000',
        render = 'compact',
        stages = 'fade',
        timeout = 3000,
        top_down = false,
      })
      vim.notify = require('notify')
    end,
  },

  -- Indent guides
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    opts = {
      indent = {
        char = '│',
        tab_char = '│',
      },
      scope = {
        enabled = true,
        show_start = true,
        show_end = false,
      },
      exclude = {
        filetypes = {
          'help',
          'dashboard',
          'neo-tree',
          'Trouble',
          'lazy',
          'mason',
          'notify',
          'toggleterm',
        },
      },
    },
  },

  -- Smooth scrolling
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup({
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true,
        stop_eof = true,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
        easing_function = 'sine',
        pre_hook = nil,
        post_hook = nil,
      })
    end,
  },

  -- Window animations
  {
    'anuvyklack/windows.nvim',
    dependencies = {
      'anuvyklack/middleclass',
      'anuvyklack/animation.nvim',
    },
    config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require('windows').setup({
        autowidth = {
          enable = true,
          winwidth = 5,
        },
        animation = {
          enable = true,
          duration = 300,
          fps = 30,
          easing = 'in_out_sine',
        },
      })
      vim.keymap.set('n', '<C-w>z', '<Cmd>WindowsMaximize<CR>')
      vim.keymap.set('n', '<C-w>_', '<Cmd>WindowsMaximizeVertically<CR>')
      vim.keymap.set('n', '<C-w>|', '<Cmd>WindowsMaximizeHorizontally<CR>')
      vim.keymap.set('n', '<C-w>=', '<Cmd>WindowsEqualize<CR>')
    end,
  },

  -- Modicator (cursor line number color changes by mode)
  {
    'mawkler/modicator.nvim',
    event = 'VeryLazy',
    opts = {
      show_warnings = false,
      highlights = {
        defaults = { bold = true },
      },
    },
    init = function()
      -- Required options for modicator
      vim.o.cursorline = true
      vim.o.number = true
    end,
  },

  -- Noice (better UI for messages, cmdline, popups)
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    opts = {
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = true,         -- classic bottom cmdline for search
        command_palette = true,       -- position cmdline and popupmenu together
        long_message_to_split = true, -- long messages go to split
        inc_rename = false,           -- enables input dialog for inc-rename
        lsp_doc_border = true,        -- add border to hover docs and signature help
      },
      routes = {
        -- Hide "written" messages
        {
          filter = { event = 'msg_show', kind = '', find = 'written' },
          opts = { skip = true },
        },
      },
    },
    keys = {
      { '<leader>nl', '<cmd>Noice last<cr>', desc = '[N]oice [L]ast message' },
      { '<leader>nh', '<cmd>Noice history<cr>', desc = '[N]oice [H]istory' },
      { '<leader>nd', '<cmd>Noice dismiss<cr>', desc = '[N]oice [D]ismiss' },
    },
  },
}
