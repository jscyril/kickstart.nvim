-- Copilot Plugins
-- GitHub Copilot with proper inline suggestions

return {
  -- Copilot.vim with working inline suggestions
  {
    'github/copilot.vim',
    lazy = false,
    config = function()
      -- IMPORTANT: These settings ensure suggestions appear
      vim.g.copilot_no_tab_map = true  -- We'll use custom accept key
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ''
      
      -- Enable for all filetypes
      vim.g.copilot_filetypes = {
        ['*'] = true,
      }

      -- Accept suggestion with Ctrl+Y (most reliable)
      vim.keymap.set('i', '<C-y>', 'copilot#Accept("")', {
        expr = true,
        replace_keycodes = false,
        silent = true,
        desc = 'Accept Copilot suggestion',
      })

      -- Also allow Tab to accept (when suggestion is visible)
      vim.keymap.set('i', '<Tab>', function()
        if vim.fn['copilot#GetDisplayedSuggestion']().text ~= '' then
          return vim.fn['copilot#Accept']('')
        else
          return '<Tab>'
        end
      end, { expr = true, silent = true, desc = 'Accept Copilot or Tab' })

      -- Navigate suggestions
      vim.keymap.set('i', '<C-]>', '<Plug>(copilot-next)', { silent = true, desc = 'Next Copilot suggestion' })
      vim.keymap.set('i', '<M-]>', '<Plug>(copilot-previous)', { silent = true, desc = 'Previous Copilot suggestion' })

      -- Dismiss suggestion
      vim.keymap.set('i', '<C-x>', '<Plug>(copilot-dismiss)', { silent = true, desc = 'Dismiss Copilot suggestion' })

      -- Manually trigger suggestion
      vim.keymap.set('i', '<C-\\>', '<Plug>(copilot-suggest)', { silent = true, desc = 'Trigger Copilot suggestion' })

      -- Show Copilot status on startup
      vim.api.nvim_create_autocmd('VimEnter', {
        callback = function()
          vim.defer_fn(function()
            vim.notify('Copilot: Run :Copilot auth if suggestions not showing', vim.log.levels.INFO)
          end, 2000)
        end,
      })
    end,
  },

  -- Copilot Chat with inline diff application
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    lazy = false,
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      show_help = true,
      auto_follow_cursor = false,
      auto_insert_mode = false,
      -- Window settings
      window = {
        layout = 'vertical', -- 'vertical', 'horizontal', 'float', 'replace'
        width = 0.4,
      },
      -- Key mappings inside CopilotChat buffer
      mappings = {
        complete = {
          insert = '<Tab>',
        },
        close = {
          normal = 'q',
          insert = '<C-c>'
        },
        reset = {
          normal = '<C-x>',
          insert = '<C-x>'
        },
        submit_prompt = {
          normal = '<CR>',
          insert = '<C-s>'
        },
        -- Accept diff - applies changes to original file (use from chat buffer in normal mode)
        accept_diff = {
          normal = 'ga',
        },
        yank_diff = {
          normal = 'gy',
          register = '"',
        },
        show_diff = {
          normal = 'gd'
        },
        show_info = {
          normal = 'gi'
        },
        show_context = {
          normal = 'gc'
        },
      },
    },
    config = function(_, opts)
      local chat = require('CopilotChat')
      chat.setup(opts)

      -- Toggle chat
      vim.keymap.set('n', '<leader>cc', ':CopilotChatToggle<CR>', { desc = '[C]opilot [C]hat Toggle' })

      -- Quick chat about buffer
      vim.keymap.set('n', '<leader>cq', function()
        local input = vim.fn.input('Quick Chat: ')
        if input ~= '' then
          chat.ask(input, { selection = require('CopilotChat.select').buffer })
        end
      end, { desc = '[C]opilot [Q]uick Chat' })

      -- Actions menu with Telescope
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', function()
        local actions = require('CopilotChat.actions')
        require('CopilotChat.integrations.telescope').pick(actions.prompt_actions())
      end, { desc = '[C]opilot [A]ctions' })

      -- Visual mode - explain, fix, review, optimize
      vim.keymap.set('v', '<leader>ce', ':CopilotChatExplain<CR>', { desc = '[C]opilot [E]xplain' })
      vim.keymap.set('v', '<leader>cf', ':CopilotChatFix<CR>', { desc = '[C]opilot [F]ix' })
      vim.keymap.set('v', '<leader>cr', ':CopilotChatReview<CR>', { desc = '[C]opilot [R]eview' })
      vim.keymap.set('v', '<leader>co', ':CopilotChatOptimize<CR>', { desc = '[C]opilot [O]ptimize' })
      vim.keymap.set('v', '<leader>cd', ':CopilotChatDocs<CR>', { desc = '[C]opilot [D]ocs' })
      vim.keymap.set('v', '<leader>cT', ':CopilotChatTests<CR>', { desc = '[C]opilot [T]ests' })
    end,
  },
}
