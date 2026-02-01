-- Keybinds Cheatsheet
-- NvChad-style floating window to display keybindings

local M = {}

-- Define all keybindings organized by category
M.keybinds = {
  {
    section = '🔧 General',
    items = {
      { key = '<Esc>', desc = 'Clear search highlights' },
      { key = '<leader>q', desc = 'Open diagnostic quickfix list' },
      { key = '<leader>d', desc = 'Show diagnostic float' },
      { key = '[d', desc = 'Previous diagnostic' },
      { key = ']d', desc = 'Next diagnostic' },
    },
  },
  {
    section = '📁 File Management',
    items = {
      { key = '<leader>e', desc = 'Toggle Neo-tree file explorer' },
      { key = '\\', desc = 'Neo-tree reveal current file' },
      { key = '-', desc = 'Open parent directory (Oil)' },
    },
  },
  {
    section = '🪟 Window Navigation',
    items = {
      { key = '<C-h>', desc = 'Move to left window' },
      { key = '<C-l>', desc = 'Move to right window' },
      { key = '<C-j>', desc = 'Move to lower window' },
      { key = '<C-k>', desc = 'Move to upper window' },
      { key = '<C-w>z', desc = 'Maximize window' },
      { key = '<C-w>=', desc = 'Equalize windows' },
    },
  },
  {
    section = '📑 Buffer Management',
    items = {
      { key = '<S-h>', desc = 'Previous buffer' },
      { key = '<S-l>', desc = 'Next buffer' },
      { key = '<leader>bp', desc = 'Pin/unpin buffer' },
      { key = '<leader>bd', desc = 'Delete buffer' },
      { key = '<leader>bo', desc = 'Close other buffers' },
      { key = '<leader><leader>', desc = 'Find existing buffers' },
    },
  },
  {
    section = '🔍 Search (Telescope)',
    items = {
      { key = '<leader>sf', desc = 'Search files' },
      { key = '<leader>sg', desc = 'Search by grep' },
      { key = '<leader>sh', desc = 'Search help' },
      { key = '<leader>sk', desc = 'Search keymaps' },
      { key = '<leader>sw', desc = 'Search current word' },
      { key = '<leader>sd', desc = 'Search diagnostics' },
      { key = '<leader>sr', desc = 'Resume last search' },
      { key = '<leader>s.', desc = 'Search recent files' },
      { key = '<leader>sn', desc = 'Search Neovim config' },
      { key = '<leader>sp', desc = 'Search projects' },
      { key = '<leader>sz', desc = 'Search Zoxide dirs' },
      { key = '<leader>/', desc = 'Fuzzy search in buffer' },
    },
  },
  {
    section = '🔄 Search & Replace',
    items = {
      { key = '<leader>sR', desc = 'Project-wide search & replace' },
    },
  },
  {
    section = '💻 Terminal',
    items = {
      { key = '<leader>tt', desc = 'Toggle terminal window' },
      { key = '<Esc><Esc>', desc = 'Exit terminal mode' },
      { key = '<C-/>', desc = 'Toggle Luxterm manager' },
    },
  },
  {
    section = '🤖 Copilot',
    items = {
      { key = '<Tab>', desc = 'Accept suggestion (insert)' },
      { key = '<C-]>', desc = 'Next suggestion (insert)' },
      { key = '<C-x>', desc = 'Dismiss suggestion (insert)' },
      { key = '<leader>cp', desc = 'Toggle Copilot on/off' },
      { key = '<leader>cs', desc = 'Copilot status' },
      { key = '<leader>cc', desc = 'Copilot Chat toggle' },
      { key = '<leader>cq', desc = 'Copilot Quick Chat' },
      { key = '<leader>ca', desc = 'Copilot Actions menu' },
      { key = '<leader>ce', desc = 'Explain code (visual)' },
      { key = '<leader>cf', desc = 'Fix code (visual)' },
      { key = '<leader>co', desc = 'Optimize code (visual)' },
    },
  },
  {
    section = '🧠 OpenCode',
    items = {
      { key = '<C-a>', desc = 'Ask opencode' },
      { key = '<C-x>', desc = 'Execute opencode action' },
      { key = '<C-.>', desc = 'Toggle opencode' },
      { key = 'go', desc = 'Add range to opencode' },
      { key = 'goo', desc = 'Add line to opencode' },
      { key = '<S-C-u>', desc = 'Scroll opencode up' },
      { key = '<S-C-d>', desc = 'Scroll opencode down' },
      { key = '+', desc = 'Increment under cursor' },
      { key = '-', desc = 'Decrement under cursor' },
    },
  },
  {
    section = '🔨 LSP',
    items = {
      { key = 'grn', desc = 'Rename symbol' },
      { key = 'gra', desc = 'Code actions' },
      { key = 'grr', desc = 'Go to references' },
      { key = 'gri', desc = 'Go to implementation' },
      { key = 'grd', desc = 'Go to definition' },
      { key = 'grD', desc = 'Go to declaration' },
      { key = 'gO', desc = 'Document symbols' },
      { key = 'gW', desc = 'Workspace symbols' },
      { key = '<leader>th', desc = 'Toggle inlay hints' },
    },
  },
  {
    section = '🎯 Formatting',
    items = {
      { key = '<leader>f', desc = 'Format buffer' },
    },
  },
  {
    section = '🐛 Diagnostics (Trouble)',
    items = {
      { key = '<leader>xx', desc = 'Toggle diagnostics' },
      { key = '<leader>xX', desc = 'Buffer diagnostics' },
      { key = '<leader>xl', desc = 'LSP definitions/references' },
    },
  },
  {
    section = '🔀 Jump List',
    items = {
      { key = '<leader>o', desc = 'Portal backward' },
      { key = '<leader>i', desc = 'Portal forward' },
    },
  },
  {
    section = '🌿 Git',
    items = {
      { key = '<leader>gg', desc = 'Open LazyGit' },
    },
  },
  {
    section = '▶️ Code Execution',
    items = {
      { key = '<leader>R', desc = 'Run code' },
    },
  },
  {
    section = '📝 Markdown',
    items = {
      { key = '<leader>mp', desc = 'Toggle markdown preview' },
    },
  },
  {
    section = '🔔 Notifications',
    items = {
      { key = '<leader>nl', desc = 'Show last message' },
      { key = '<leader>nh', desc = 'Show history' },
      { key = '<leader>nd', desc = 'Dismiss notifications' },
    },
  },
  {
    section = '🎨 Appearance',
    items = {
      { key = '<leader>tc', desc = 'Pick colorscheme' },
    },
  },
}

-- Define highlight groups for the cheatsheet
local function setup_highlights()
  local hl = vim.api.nvim_set_hl

  -- Header/section title
  hl(0, 'CheatsheetHeader', { fg = '#7dcfff', bold = true })
  -- Key highlight
  hl(0, 'CheatsheetKey', { fg = '#bb9af7', bold = true })
  -- Description
  hl(0, 'CheatsheetDesc', { fg = '#a9b1d6' })
  -- Separator
  hl(0, 'CheatsheetSeparator', { fg = '#3b4261' })
  -- Border
  hl(0, 'CheatsheetBorder', { fg = '#1793D1' })
  -- Title
  hl(0, 'CheatsheetTitle', { fg = '#1793D1', bold = true })
end

-- Generate the cheatsheet content as lines
local function generate_content()
  local lines = {}
  local highlights = {} -- { line, col_start, col_end, hl_group }

  -- Add header
  table.insert(lines, '')
  table.insert(lines, '  ⌨️  Keybinds Cheatsheet  │  Leader: <Space>  │  Press q to close')
  table.insert(highlights, { #lines, 0, -1, 'CheatsheetHeader' })
  table.insert(lines, '')

  for _, section in ipairs(M.keybinds) do
    -- Section header
    local section_line = '  ' .. section.section
    table.insert(lines, section_line)
    table.insert(highlights, { #lines, 0, -1, 'CheatsheetHeader' })

    -- Separator line
    table.insert(lines, '  ' .. string.rep('─', 60))
    table.insert(highlights, { #lines, 0, -1, 'CheatsheetSeparator' })

    -- Items
    for _, item in ipairs(section.items) do
      -- Format: "  <key>           description"
      local key_display = item.key
      local padding = string.rep(' ', math.max(1, 20 - #key_display))
      local line = '  ' .. key_display .. padding .. item.desc

      table.insert(lines, line)

      -- Highlight the key part
      local key_start = 2
      local key_end = key_start + #key_display
      table.insert(highlights, { #lines, key_start, key_end, 'CheatsheetKey' })

      -- Highlight the description
      local desc_start = key_end + #padding
      table.insert(highlights, { #lines, desc_start, -1, 'CheatsheetDesc' })
    end

    table.insert(lines, '')
  end

  return lines, highlights
end

-- Open the cheatsheet in a floating window
function M.open()
  setup_highlights()

  local lines, highlights = generate_content()

  -- Calculate window size
  local width = math.floor(vim.o.columns * 0.75)
  local height = math.min(#lines + 2, math.floor(vim.o.lines * 0.85))
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  -- Create buffer
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

  -- Apply highlights
  for _, hl in ipairs(highlights) do
    local line_num, col_start, col_end, hl_group = hl[1], hl[2], hl[3], hl[4]
    if col_end == -1 then
      col_end = #lines[line_num]
    end
    pcall(vim.api.nvim_buf_add_highlight, buf, -1, hl_group, line_num - 1, col_start, col_end)
  end

  -- Create floating window
  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded',
    title = '  Keybinds ',
    title_pos = 'center',
  })

  -- Window options
  vim.api.nvim_set_option_value('winhl', 'Normal:Normal,FloatBorder:CheatsheetBorder', { win = win })
  vim.api.nvim_set_option_value('cursorline', true, { win = win })

  -- Buffer options
  vim.api.nvim_set_option_value('modifiable', false, { buf = buf })
  vim.api.nvim_set_option_value('bufhidden', 'wipe', { buf = buf })
  vim.api.nvim_set_option_value('filetype', 'cheatsheet', { buf = buf })

  -- Keymaps for the cheatsheet buffer
  local opts = { buffer = buf, silent = true, nowait = true }

  -- Close
  vim.keymap.set('n', 'q', function()
    vim.api.nvim_win_close(win, true)
  end, opts)
  vim.keymap.set('n', '<Esc>', function()
    vim.api.nvim_win_close(win, true)
  end, opts)

  -- Navigation
  vim.keymap.set('n', 'j', function()
    local cursor = vim.api.nvim_win_get_cursor(win)
    if cursor[1] < #lines then
      vim.api.nvim_win_set_cursor(win, { cursor[1] + 1, cursor[2] })
    end
  end, opts)
  vim.keymap.set('n', 'k', function()
    local cursor = vim.api.nvim_win_get_cursor(win)
    if cursor[1] > 1 then
      vim.api.nvim_win_set_cursor(win, { cursor[1] - 1, cursor[2] })
    end
  end, opts)

  -- Page navigation
  vim.keymap.set('n', '<C-d>', '<C-d>', opts)
  vim.keymap.set('n', '<C-u>', '<C-u>', opts)
  vim.keymap.set('n', 'gg', 'gg', opts)
  vim.keymap.set('n', 'G', 'G', opts)

  -- Search
  vim.keymap.set('n', '/', '/', opts)
  vim.keymap.set('n', 'n', 'n', opts)
  vim.keymap.set('n', 'N', 'N', opts)
end

-- Create user command
vim.api.nvim_create_user_command('Cheatsheet', M.open, { desc = 'Open keybinds cheatsheet' })

return M
