-- Colorscheme Plugins
-- All theme/colorscheme configurations

return {
  -- Tokyo Night (Active theme)
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup({
        styles = {
          comments = { italic = false },
        },
      })
      vim.cmd.colorscheme('tokyonight-night')
    end,
  },

  -- Kanagawa
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup({
        undercurl = true,
        commentStyle = { italic = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        transparent = false,
        terminalColors = true,
        dimInactive = false,
        theme = 'lotus',
      })
    end,
  },

  -- Tokyo Dark
  {
    'tiagovla/tokyodark.nvim',
    opts = {},
    config = function(_, opts)
      require('tokyodark').setup(opts)
    end,
  },

  -- Catppuccin
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      flavour = 'mocha',
      transparent_background = false,
    },
  },

  -- Rose Pine
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    opts = {
      variant = 'moon',
    },
  },

  -- Everforest
  {
    'sainnhe/everforest',
    priority = 1000,
    config = function()
      vim.g.everforest_background = 'hard'
      vim.g.everforest_better_performance = 1
    end,
  },

  -- Gruvbox Material
  {
    'sainnhe/gruvbox-material',
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_foreground = 'material'
      vim.g.gruvbox_material_better_performance = 1
    end,
  },

  -- Sonokai
  {
    'sainnhe/sonokai',
    priority = 1000,
    config = function()
      vim.g.sonokai_style = 'default'
      vim.g.sonokai_better_performance = 1
    end,
  },

  -- Nightfox
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    opts = {
      options = {
        styles = {
          comments = 'italic',
          keywords = 'bold',
        },
      },
    },
  },

  -- Dracula
  {
    'Mofiqul/dracula.nvim',
    priority = 1000,
    opts = {
      transparent_bg = false,
      italic_comment = true,
    },
  },

  -- OneDark
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    opts = {
      style = 'dark',
    },
  },

  -- GitHub Theme
  {
    'projekt0n/github-nvim-theme',
    priority = 1000,
    config = function()
      require('github-theme').setup({
        options = {
          styles = {
            comments = 'italic',
          },
        },
      })
    end,
  },

  -- VSCode Theme
  {
    'Mofiqul/vscode.nvim',
    priority = 1000,
    opts = {
      style = 'dark',
      transparent = false,
      italic_comments = true,
    },
  },

  -- OneDarkPro
  {
    'olimorris/onedarkpro.nvim',
    priority = 1000,
    opts = {
      styles = {
        comments = 'italic',
      },
    },
  },

  -- Material
  {
    'marko-cerovac/material.nvim',
    priority = 1000,
    config = function()
      vim.g.material_style = 'darker'
    end,
  },

  -- Nightfly
  {
    'bluz71/vim-nightfly-colors',
    name = 'nightfly',
    priority = 1000,
  },

  -- Moonfly
  {
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    priority = 1000,
  },

  -- Abstract
  {
    'Abstract-IDE/Abstract-cs',
    priority = 1000,
  },

  -- Oxocarbon
  {
    'nyoom-engineering/oxocarbon.nvim',
    priority = 1000,
  },

  -- Gruber Darker
  {
    'blazkowolf/gruber-darker.nvim',
    priority = 1000,
  },

  -- Bamboo
  {
    'ribru17/bamboo.nvim',
    priority = 1000,
    opts = {
      style = 'vulgaris',
    },
  },
}
