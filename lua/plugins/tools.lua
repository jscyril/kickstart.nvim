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

  -- Neo-tree (improved configuration)
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
      { '<leader>e', '<cmd>Neotree toggle<CR>', desc = 'File [E]xplorer' },
      { '\\', '<cmd>Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    opts = {
      close_if_last_window = true,
      popup_border_style = 'rounded',
      enable_git_status = true,
      enable_diagnostics = true,
      default_component_configs = {
        indent = {
          with_expanders = true,
          expander_collapsed = '',
          expander_expanded = '',
        },
        icon = {
          folder_closed = '',
          folder_open = '',
          folder_empty = '',
        },
        git_status = {
          symbols = {
            added     = '✚',
            modified  = '',
            deleted   = '✖',
            renamed   = '󰁕',
            untracked = '',
            ignored   = '',
            unstaged  = '󰄱',
            staged    = '',
            conflict  = '',
          },
        },
      },
      window = {
        position = 'left',
        width = 35,
        mappings = {
          ['<space>'] = 'none',
          ['<CR>'] = 'open',              -- Open in current window
          ['o'] = 'open',                 -- Alternative open
          ['l'] = 'open',                 -- Open with l (vim-like)
          ['h'] = 'close_node',           -- Close with h (vim-like)
          ['s'] = 'open_split',           -- Open in split
          ['v'] = 'open_vsplit',          -- Open in vsplit
          ['t'] = 'open_tabnew',          -- Open in new tab
          ['<tab>'] = 'toggle_preview',   -- Preview file
          ['a'] = 'add',                  -- Add file
          ['A'] = 'add_directory',        -- Add directory
          ['d'] = 'delete',               -- Delete
          ['r'] = 'rename',               -- Rename
          ['c'] = 'copy',                 -- Copy
          ['m'] = 'move',                 -- Move
          ['q'] = 'close_window',         -- Close
          ['R'] = 'refresh',              -- Refresh
          ['?'] = 'show_help',            -- Help
          ['\\'] = 'close_window',        -- Also close with backslash
          -- Navigation
          ['-'] = 'navigate_up',          -- Go to parent directory
          ['<BS>'] = 'navigate_up',       -- Backspace also goes up
          ['.'] = 'set_root',             -- Set current folder as root
          ['H'] = 'toggle_hidden',        -- Toggle hidden files
          ['~'] = 'set_root',             -- Go home (set ~ as root when on ~)
          ['/'] = 'fuzzy_finder',         -- Fuzzy find in tree
          ['<C-x>'] = 'clear_filter',     -- Clear filter
        },
      },
      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            'node_modules',
            '.git',
          },
        },
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
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
