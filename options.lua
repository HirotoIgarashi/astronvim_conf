-- set vim options here (vim.<first_key>.<second_key> = value)
-- return {
--   -- set to true or false etc.
--   opt = {
--   },
--   g = {
--     -- disable notifications when toggling UI elements
--     ui_notifications_enabled = true,
--   },
-- }
-- If you need more control, you can use the function()...end notation
return function(local_vim)
  -- 新しい行を改行で追加した時に、ひとつ上の行のインデントを引き継がせます。
  local_vim.opt.autoindent = true
  local_vim.opt.smartindent = true

  -- カーソルが存在する行にハイライトを当ててくれます。
  local_vim.opt.cursorline = true

  -- TABキーを押した時に、2文字分の幅を持ったTABが表示されます。
  local_vim.opt.tabstop = 2
  local_vim.opt.softtabstop = 2
  local_vim.opt.shiftwidth = 2

  -- tabstop で設定した数の分の半角スペースが入力されます。
  local_vim.opt.expandtab = true

  -- カーソル行からの相対的な行番号を表示する
  local_vim.opt.relativenumber = true
  local_vim.opt.number = false

  local_vim.opt.termguicolors = true

  -- 挿入されるテキストの最大幅。長い行は、この幅を得るために空白の後に分割
  -- されます。値をゼロにすると、これが無効になります。
  --  「textwidth」がゼロの場合、「wrapmargin」が使用される可能性があります。
  local_vim.opt.textwidth = 80

  -- テキストの表示方法を変更します。バッファ内のテキストは変更されません。
  -- trueにすると、ウィンドウの幅より長い行が折り返され、表示が次の行に続きます。
  -- falseの場合、行は折り返されず、長い行の一部のみが表示されます。
  local_vim.opt.wrap = true

  -- 目印行を表示するかどうかを指定する。"auto"は表示すべき目印があるときのみ
  local_vim.opt.signcolumn = "auto"

  local_vim.opt.spell = false
  local_vim.opt.showtabline = 2

  -- local_vim.opt.formatoptions = "tcqj" <- default
  -- t: 'textwidth'が設定されている場合、テキスト部分を自動的に折り返す。
  -- c: 同上。コメントだったらコメント開始文字を自動挿入する
  -- q: gqコマンドでコメントを整形する。Note that formatting will not
  --   change blank lines or lines containing only the comment leader. A new
  --   paragraph starts after such a line, or when the comment leader changes.
  -- j: 複数行のコメントを連結する際に、余計なコメント開始文字を消す
  -- r: automatically insert the current comment leader after hitting <Enter>
  --   in Insert mode.
  -- o: automatically insert the current comment leader after hitting 'o' or
  --   'O' in Normal mode. In case comment is unwanted in a specific place use
  --   CTRL-U to quickly delete it. i_CTRL_U
  -- local_vim.opt.formatoptions:append { m = true, M = true }
  -- local_vim.opt.formatoptions = "tcqjrolmM"
  local_vim.opt.formatoptions = "tcqjmM"

  -- FIX: 一瞬表示されるが消えてしまう
  -- smartcolumn.nvimとバッティングしていたのでsmartcolumn.nvimを無効にする。
  -- 80文字目にラインを入れる
  local_vim.opt.colorcolumn = "80"

  -- removing option from list
  local_vim.opt.whichwrap = vim.opt.whichwrap - { "b", "s" }
  -- add to option list
  local_vim.opt.shortmess = vim.opt.shortmess + { I = true }

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

  -- set the visibility of diagnostics in the UI (
  -- 0=off,
  -- 1=only show in status line,
  -- 2=virtual text off,
  -- 3=all on
  -- )
  local_vim.g.diagnostics_mode = 3

  -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
  local_vim.g.icons_enabled = true

  return local_vim
end
