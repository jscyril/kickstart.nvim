-- Tools Plugins
-- code_runner, markdown-preview, project.nvim, typr, neo-tree, luxterm

return {
  -- Code Runner
  {
    'CRAG666/code_runner.nvim',
    config = function()
      require('code_runner').setup({
        filetype = {
          java = 'cd $dir && javac $fileName && java $fileNameWithoutExt',
          python = 'python3 -u',
          typescript = 'deno run',
          rust = 'cd $dir && rustc $fileName && $dir/$fileNameWithoutExt',
          c = 'cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt',
          cpp = 'cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt',
          go = 'go run',
          javascript = 'node',
        },
      })
      vim.keymap.set('n', '<leader>R', ':RunCode<CR>', { desc = '[R]un code' })
    end,
  },

  -- Markdown Preview
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && npm install',
    ft = { 'markdown' },
    keys = {
      { '<leader>mp', '<cmd>MarkdownPreviewToggle<cr>', desc = '[M]arkdown [P]review' },
    },
  },

  -- Project.nvim
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup({
        detection_methods = { 'pattern' },
        patterns = { '.git', 'Makefile', 'package.json', 'go.mod' },
      })
      require('telescope').load_extension('projects')
      vim.keymap.set('n', '<leader>sp', '<cmd>Telescope projects<cr>', { desc = '[S]earch [P]rojects' })
    end,
  },

  -- Typr (typing practice)
  {
    'nvzone/typr',
    dependencies = 'nvzone/volt',
    opts = {},
    cmd = { 'Typr', 'TyprStats' },
  },

  -- Neo-tree
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    lazy = false,
    keys = {
      { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
      { '<leader>e', '<Cmd>Neotree<CR>', desc = 'File [E]xplorer' },
    },
    opts = {
      filesystem = {
        window = {
          mappings = {
            ['\\'] = 'close_window',
            ['<space>'] = 'none',
            ['l'] = 'open_tabnew',
            ['<CR>'] = 'open_tabnew',
            ['h'] = 'close_node',
          },
        },
      },
    },
  },

  -- Luxterm (terminal manager)
  {
    'luxvim/nvim-luxterm',
    config = function()
      require('luxterm').setup({
        manager_width = 0.8,
        manager_height = 0.8,
        preview_enabled = true,
        auto_hide = true,
        keymaps = {
          toggle_manager = '<C-/>',
        },
      })
    end,
  },
}
