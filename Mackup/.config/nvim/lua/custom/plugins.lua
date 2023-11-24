local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  -- {
  --   "max397574/better-escape.nvim",
  --   event = "InsertEnter",
  --   config = function() require("better_escape").setup() end,
  -- },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
  {
    'nmac427/guess-indent.nvim',
    event = "BufEnter",
    enabled = true,
    config = function() require('guess-indent').setup({
      auto_cmd = false,
    })
    vim.api.nvim_create_autocmd("VimEnter", {
    group = vim.api.nvim_create_augroup("GuessIndent", { clear = true }),
    command = "autocmd FileType * :silent lua require('guess-indent').set_from_buffer(true)"
    })
    end,
  },

  {
    'echasnovski/mini.nvim',
    event = "BufEnter",
    enabled = true,
    config = function ()
      require('mini.align').setup()
      require('mini.surround').setup()
      require('mini.jump').setup()
      require('mini.jump2d').setup({
          labels = 'oienarstwqyxcpl'
      })
      local starter = require('mini.starter')
        starter.setup({
        header = 'D!',
        footer = '',
        content_hooks = {
            starter.gen_hook.adding_bullet(),
            starter.gen_hook.indexing('all', { 'Builtin actions' }),
            starter.gen_hook.padding(3, 2),
          },
        })
    end,
  }
}

return plugins

