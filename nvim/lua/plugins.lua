-- Lazy.nvim plugin manager setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({

  -- uncomment this if you use github copilot or change the path if you're not on linux
  { dir = "~/.config/nvim/pack/github/start/copilot.vim" },

  -- welcome screen
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end,
  },
  -- icons
  "nvim-tree/nvim-web-devicons",

  -- colorschemes
  ---- kanagawa
  "rebelot/kanagawa.nvim",
  ---- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  ---- catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  --  indent-blankline for scpoe indecator
  { "lukas-reineke/indent-blankline.nvim",               main = "ibl", opts = {} },

  -- statusline : the line at the bottom of the screen that shows mode, file name, etc.
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("configs.lualine")
    end,
    dependencies = { "nvim-web-devicons" },
  },

  -- mason lsp manager
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  --cmp for autocompletion and snippet completions (works with lsp)
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "saadparwaiz1/cmp_luasnip",
  "hrsh7th/cmp-nvim-lsp",
  "l3mon4d3/luasnip",

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- noice of notifications, cmdline and popupmenu
  {
    "folke/noice.nvim",
    opts = {},
    dependencies = {
      "muniftanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("configs.treesitter")
    end,
  },
  { "windwp/nvim-ts-autotag", after = "nvim-treesitter" },

  -- file manager
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "muniftanjim/nui.nvim",
    },
  },

  -- flash for fast navigation
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "flash",
      },
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "flash treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "remote flash",
      },
      {
        "r",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "treesitter search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "toggle flash search",
      },
    },
  },

  -- show colors in css code like : #ffffff
  {
    "norcalli/nvim-colorizer.lua",
  },

  -- toggle terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      function()
        require("configs.toggleterm")
      end,
    },
  },

  -- wich key
  {
    "folke/which-key.nvim",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
    },
  },

  -- git
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("configs.gitsigns")
    end,
  },

  -- to comment code easily using leader + gc in visual mode
  { "tpope/vim-commentary" },

  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}, -- this is equalent to setup({}) function
  },

  -- null-ls for code formatting
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("configs.null-ls")
    end,
    requires = { "nvim-lua/plenary.nvim" },
  },
  { "mhartington/formatter.nvim" },

  --end of lazy setup
})
