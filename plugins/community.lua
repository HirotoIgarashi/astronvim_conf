return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at
  -- https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.colorscheme.nightfox", enabled = false },
  -- { import = "astrocommunity.colorscheme.kanagawa", enabled = true },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        ts_rainbow2 = true,
      },
    },
  },
  { import = "astrocommunity.markdown-and-latex.peek-nvim" },
  -- { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- install with yarn or npm
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   cmd = {
  --     "MarkdownPreviewToggle",
  --     "MarkdownPreview",
  --     "MarkdownPreviewStop",
  --   },
  --   build = "cd app && yarn install",
  --   init = function() vim.g.mkdp_filetypes = { "markdown" } end,
  --   ft = { "markdown" },
  -- },
  -- install without yarn or npm
  --     "iamcco/markdown-preview.nvim",
  -- cmd = {
  --     "MarkdownPreviewToggle",
  --     "MarkdownPreview",
  --     "MarkdownPreviewStop",
  -- },
  --     ft = { "markdown" },
  --     build = function() vim.fn["mkdp#util#install"]() end,
  -- }
  { import = "astrocommunity.editing-support.treesj" },
  {
    "Wansmer/treesj",
    keys = {
      { "<leader>m", "<CMD>TSJToggle<CR>", desc = "Toggle Treesitter Join" },
    },
    cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
    opts = { use_default_keymaps = false },
  },
  -- { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  -- {
  --   "m4xshen/smartcolumn.nvim",
  --   opts = { colorcolumn = 79, disabled_filetypes = { "help" } },
  -- },
}
