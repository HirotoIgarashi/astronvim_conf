-- set vim options here (vim.<first_key>.<second_key> = value)
-- return {
--   -- set to true or false etc.
--   opt = {
--     relativenumber = true, -- sets vim.opt.relativenumber
--     number = true, -- sets vim.opt.number
--     spell = false, -- sets vim.opt.spell
--     signcolumn = "auto", -- sets vim.opt.signcolumn to auto
--     -- wrap = false,          -- sets vim.opt.wrap
--     wrap = true, -- sets vim.opt.wrap
--   },
--   g = {
--     -- sets vim.g.mapleader
--     mapleader = " ",
--
--     -- enable or disable auto formatting at start
--     (lsp.formatting.format_on_save must be enabled)
--     autoformat_enabled = true,
--
--     -- enable completion at start
--     cmp_enabled = true,
--
--     -- enable autopairs at start
--     autopairs_enabled = true,
--
--     -- set the visibility of diagnostics in the UI  (
--       0=off,
--       1=only show in status line,
--       2=virtual text off,
--       3=all on
--     )
--     diagnostics_mode = 3,
--
--     -- disable icons in the UI (
--       disable if no nerd font is available,
--       requires :PackerSync after changing
--     )
--     icons_enabled = true,
--
--     -- disable notifications when toggling UI elements
--     ui_notifications_enabled = true,
--   },
-- }
-- If you need more control, you can use the function()...end notation
return function(local_vim)
    local_vim.opt.relativenumber = true -- sets vim.opt.relativenumber
    -- local_vim.opt.number = true -- sets vim.opt.number
    local_vim.opt.number = false -- sets vim.opt.number

    -- Set tabs to 2 spaces
    local_vim.opt.tabstop = 2
    local_vim.opt.softtabstop = 2
    local_vim.opt.expandtab = true

    -- Enable auto indenting and set it to spaces
    local_vim.opt.smartindent = true
    local_vim.opt.shiftwidth = 2

    -- Enable text wrap
    local_vim.opt.wrap = true
    -- local_vim.opt.wrap = false

    -- Enable the sign column to prevent the screen from jumping
    local_vim.opt.signcolumn = "auto"

    local_vim.opt.spell = false -- sets vim.opt.spell
    local_vim.opt.showtabline = 2
    -- local_vim.opt.autoindent = true

    -- local_vim.opt.formatoptions = "tcqj" <- default
    -- t: Auto-wrap text using 'textwidth'
    -- 'textwidth'が設定されている場合テキスト部分を自動的に折り返す。
    -- c: Auto-wrap comment using 'textwidth', inserting the current comment
    --   leader automatically.
    -- q: Allow formatting of comments with "gq". Note that formatting will not
    --   change blank lines or lines containing only the comment leader. A new
    --   paragraph starts after such a line, or when the comment leader changes.
    -- j: Where it makes sense, remove a comment leader when joining lines. For
    --   example, joining:
    --   	int i;   // the index
    -- 	         // in the list
    --   Becomes:
    -- 	  int i;   // the index in the list
    -- local_vim.opt.formatoptions = "tcqjrol"
    -- r: automatically insert the current comment leader after hitting <Enter>
    --   in Insert mode.
    -- o: automatically insert the current comment leader after hitting 'o' or
    --   'O' in Normal mode. In case comment is unwanted in a specific place use
    --   CTRL-U to quickly delete it. i_CTRL_U
    -- local_vim.opt.formatoptions = "jcroqlt"
    -- local_vim.opt.formatoptions = "tcjrolmM"
    -- local_vim.opt.formatoptions:append { m = true, M = true }
    local_vim.opt.formatoptions = "tcqjrolmM"
    local_vim.opt.textwidth = 79

    -- Place a column line
    -- local_vim.opt.colorcolumn = "80"
    -- FIX: 一瞬表示されるが消えてしまう
    -- smartcolumn.nvimとバッティングしていたのでsmartcolumn.nvimを無効にした
    local_vim.opt.colorcolumn = "79"

    -- removing option from list
    local_vim.opt.whichwrap = vim.opt.whichwrap - {"b", "s"}
    -- add to option list
    local_vim.opt.shortmess = vim.opt.shortmess + {I = true}

    -- Set leader key to space
    local_vim.g.mapleader = " "
    local_vim.g.maplocalleader = " "

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
    -- (disable if no nerd font is available,
    -- requires :PackerSync after changing)
    local_vim.g.icons_enabled = true

    return local_vim
end
