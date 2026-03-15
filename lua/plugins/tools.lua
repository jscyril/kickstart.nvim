-- Tools Plugins
-- code_runner, markdown-preview, project.nvim, typr, yazi, luxterm

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

  -- Yazi (terminal file manager)
  {
    'mikavilpas/yazi.nvim',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    keys = {
      { '<leader>e', '<cmd>Yazi<CR>', desc = 'File [E]xplorer (Yazi)' },
      { '\\', '<cmd>Yazi cwd<CR>', desc = 'Yazi working directory', silent = true },
    },
    opts = {
      open_for_directories = true,
      keymaps = {
        show_help = '<f1>',
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

  -- OpenCode (AI coding assistant)
  {
    'NickvanDyke/opencode.nvim',
    dependencies = {
      -- Required for snacks provider
      { 'folke/snacks.nvim', opts = { input = {}, picker = {}, terminal = {} } },
    },
    config = function()
      ---@type opencode.Opts
      vim.g.opencode_opts = {
        -- Configuration options - see lua/opencode/config.lua
      }

      -- Required for opts.events.reload
      vim.o.autoread = true

      -- Keymaps
      vim.keymap.set({ 'n', 'x' }, '<C-a>', function()
        require('opencode').ask('@this: ', { submit = true })
      end, { desc = 'Ask opencode…' })

      vim.keymap.set({ 'n', 'x' }, '<C-x>', function()
        require('opencode').select()
      end, { desc = 'Execute opencode action…' })

      vim.keymap.set({ 'n', 't' }, '<C-.>', function()
        require('opencode').toggle()
      end, { desc = 'Toggle opencode' })

      vim.keymap.set({ 'n', 'x' }, 'go', function()
        return require('opencode').operator('@this ')
      end, { desc = 'Add range to opencode', expr = true })

      vim.keymap.set('n', 'goo', function()
        return require('opencode').operator('@this ') .. '_'
      end, { desc = 'Add line to opencode', expr = true })

      vim.keymap.set('n', '<S-C-u>', function()
        require('opencode').command('session.half.page.up')
      end, { desc = 'Scroll opencode up' })

      vim.keymap.set('n', '<S-C-d>', function()
        require('opencode').command('session.half.page.down')
      end, { desc = 'Scroll opencode down' })

      -- Remap increment/decrement since C-a and C-x are used for opencode
      vim.keymap.set('n', '+', '<C-a>', { desc = 'Increment under cursor', noremap = true })
      vim.keymap.set('n', '-', '<C-x>', { desc = 'Decrement under cursor', noremap = true })
    end,
  },
}
