vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.suda_smart_edit = 1

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  {
    "catppuccin/nvim",
    priority = 1000,
    name = "catppuccin",
    config = function()
      vim.cmd.colorscheme "catppuccin-macchiato"
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
      { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
      { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete buffers to the right" },
      { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete buffers to the left" },
      { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
      { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
      { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
      { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    },
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },

  {
    "tpope/vim-sleuth",
    event = { "BufReadPre", "BufNewFile" },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
          "help",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
    main = "ibl",
  },

  {
    "echasnovski/mini.comment",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },

  {
    "echasnovski/mini.surround",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },

  {
    "echasnovski/mini.pairs",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },

  {
    "lambdalisue/vim-suda",
    event = { "BufReadPre", "BufNewFile" },
  },

  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },

  {
    "MunifTanjim/nui.nvim",
    lazy = true,
  },

}, {})

vim.opt.breakindent = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

