-- Core Keymaps
-- All keybindings organized by category

local keymap = vim.keymap.set

-- ============================================
-- GENERAL
-- ============================================
-- Escape key - ensure it works in all modes
keymap('i', '<Esc>', '<Esc>', { desc = 'Exit insert mode' })
keymap('v', '<Esc>', '<Esc>', { desc = 'Exit visual mode' })
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlights' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- ============================================
-- WINDOW NAVIGATION
-- ============================================
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- ============================================
-- TERMINAL
-- ============================================
keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Terminal toggle functionality
local term_buf = nil
local term_win = nil

local function toggle_terminal()
  if term_win and vim.api.nvim_win_is_valid(term_win) then
    vim.api.nvim_win_close(term_win, true)
    term_win = nil
    return
  end

  if not term_buf or not vim.api.nvim_buf_is_valid(term_buf) then
    vim.cmd('botright split')
    vim.cmd('resize 10')
    vim.cmd('terminal')
    term_win = vim.api.nvim_get_current_win()
    term_buf = vim.api.nvim_get_current_buf()
  else
    vim.cmd('botright split')
    vim.cmd('resize 10')
    vim.api.nvim_set_current_buf(term_buf)
    term_win = vim.api.nvim_get_current_win()
  end

  vim.cmd('startinsert')
end

keymap('n', '<leader>tt', toggle_terminal, { desc = '[T]oggle [T]erminal below' })

-- ============================================
-- COPILOT
-- ============================================
keymap('n', '<leader>cp', function()
  if vim.g.copilot_enabled == false then
    vim.cmd('Copilot enable')
    vim.g.copilot_enabled = true
    vim.notify('Copilot enabled', vim.log.levels.INFO)
  else
    vim.cmd('Copilot disable')
    vim.g.copilot_enabled = false
    vim.notify('Copilot disabled', vim.log.levels.INFO)
  end
end, { desc = '[C]opilot Toggle' })

keymap('n', '<leader>cs', '<cmd>Copilot status<cr>', { desc = '[C]opilot [S]tatus' })

-- ============================================
-- COLORSCHEME
-- ============================================
keymap('n', '<leader>tc', function()
  require('telescope.builtin').colorscheme({ enable_preview = true })
end, { desc = 'Pick colorscheme' })
