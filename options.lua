-- set vim options here (vim.<first_key>.<second_key> = value)
-- return {
--   opt = {
--     -- set to true or false etc.
--     relativenumber = true, -- sets vim.opt.relativenumber
--     number = true, -- sets vim.opt.number
--     spell = false, -- sets vim.opt.spell
--     signcolumn = "auto", -- sets vim.opt.signcolumn to auto
--     -- wrap = false,          -- sets vim.opt.wrap
--     wrap = true, -- sets vim.opt.wrap
--   },
--   g = {
--     mapleader = " ", -- sets vim.g.mapleader
--     autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
--     cmp_enabled = true, -- enable completion at start
--     autopairs_enabled = true, -- enable autopairs at start
--     diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
--     icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
--     ui_notifications_enabled = true, -- disable notifications when toggling UI elements
--   },
-- }
-- If you need more control, you can use the function()...end notation
return function(local_vim)
  local_vim.opt.relativenumber = true -- sets vim.opt.relativenumber
  local_vim.opt.number = true -- sets vim.opt.number
  local_vim.opt.spell = false -- sets vim.opt.spell
  local_vim.opt.signcolumn = "auto" -- sets vim.opt.signcolumn to auto
  local_vim.opt.wrap = true -- sets vim.opt.wrap
  local_vim.opt.showtabline = 2
  local_vim.opt.expandtab = true
  local_vim.opt.autoindent = true
  local_vim.opt.smartindent = true
  local_vim.opt.textwidth = 78
  local_vim.opt.tabstop = 2
  local_vim.opt.shiftwidth = 2
  local_vim.opt.colorcolumn = "79"
  -- local_vim.opt.formatoptions += mM
  -- removing option from list
  local_vim.opt.whichwrap = vim.opt.whichwrap - { "b", "s" }
  -- add to option list
  local_vim.opt.shortmess = vim.opt.shortmess + { I = true }
  -- sets vim.g.mapleader
  local_vim.g.mapleader = " "
  -- enable or disable auto formatting at start
  -- (lsp.formatting.format_on_save must be enabled)
  local_vim.g.autoformat_enabled = true
  -- enable completion at start
  local_vim.g.cmp_enabled = true
  -- enable autopairs at start
  local_vim.g.autopairs_enabled = true
  -- set the visibility of diagnostics in the UI
  -- (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
  local_vim.g.diagnostics_mode = 3
  -- disable icons in the UI
  -- (disable if no nerd font is available, requires :PackerSync after changing)
  local_vim.g.icons_enabled = true

  return local_vim
end
