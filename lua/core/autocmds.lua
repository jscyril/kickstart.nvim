-- Core Autocommands

-- Apply 20% transparency using winblend/pumblend
-- Note: This requires terminal transparency to be enabled separately
vim.opt.winblend = 20      -- 20% transparency for floating windows
vim.opt.pumblend = 20      -- 20% transparency for popup menus

vim.api.nvim_create_autocmd('ColorScheme', {
  desc = 'Apply transparency settings after colorscheme loads',
  group = vim.api.nvim_create_augroup('user-transparency', { clear = true }),
  callback = function()
    -- Set blend for NormalFloat highlight group
    local normal_float = vim.api.nvim_get_hl(0, { name = 'NormalFloat' })
    normal_float.blend = 20
    vim.api.nvim_set_hl(0, 'NormalFloat', normal_float)
  end,
})

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
