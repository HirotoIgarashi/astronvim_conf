-- TODO: Test

return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function ()
    --  require("todo-comments").setup {}
    -- end,
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      {
        "<leader>T",
        "<cmd>TodoTelescope<cr>",
        desc = "Open TODOs in Telescope",
      },
    },
  },
  {
    -- https://github.com/kylechui/nvim-surround
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup() --{
      -- Configuration here, or leave empty to use defaults
      --}
    end,
  },
  -- https://github.com/Wansmer/treesj
  {
    "Wansmer/treesj",
    keys = { "<space>m", "<space>j", "<space>s" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup {--[[ your config ]]
      }
    end,
  },
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup { -- Optional, you don't have to run setup.
        groups = { -- table: default groups
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        extra_groups = {
          "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
          "NvimTreeNormal", -- NvimTree
        }, -- table: additional groups that should be cleared
        exclude_groups = {}, -- table: groups you don't want to clear
      }
    end,
  },

  -- {
  --   "nvim-neorg/neorg",
  --   build = ":Neorg sync-parsers",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   config = function()
  --     require("neorg").setup {
  --       load = {
  --         ["core.defaults"] = {}, -- Loads default behaviour
  --         ["core.concealer"] = {}, -- Adds pretty icons to your documents
  --         ["core.dirman"] = { -- Manages Neorg workspaces
  --           config = {
  --             workspaces = {
  --               notes = "~/notes",
  --             },
  --           },
  --         },
  --       },
  --     }
  --   end,
  -- },
}
