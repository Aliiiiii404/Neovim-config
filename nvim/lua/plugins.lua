-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
	pattern = "plugins.lua",
	command = "source <afile> | PackerCompile",
})
return require("packer").startup(function(use)
	-- Packer plugin manager
	use("wbthomason/packer.nvim")

	-- Welcome screen alpha-nvim
	use({
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("alpha.themes.startify").opts)
		end,
	})

	-- Icons
	use("kyazdani42/nvim-web-devicons")

	-- Colorschemes
	---- kanagawa
	use("rebelot/kanagawa.nvim")
	---- tokyonight
	use("folke/tokyonight.nvim")
	---- catppuccin
	use("catppuccin/nvim")

	-- Statusline : the line at the bottom of the screen that shows mode, file name, etc.
	use({
		"nvim-lualine/lualine.nvim",
		event = "BufEnter",
		config = function()
			require("configs.lualine")
		end,
		requires = { "nvim-web-devicons" },
	})

	--LSP and error messages
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	--cmp for autocompletion and snippet completions (works with LSP)
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")
	use("hrsh7th/cmp-nvim-lsp")
	use("L3MON4D3/LuaSnip")

	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- noice of notifications, cmdline and popupmenu
	use({
		"folke/noice.nvim",
		config = function()
			require("noice").setup()
		end,
	})
	use("rcarriga/nvim-notify")
	use("MunifTanjim/nui.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("configs.treesitter")
		end,
	})
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" })

	-- File manager
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})
	use("nvim-tree/nvim-tree.lua")

	-- Show colors in css code like : #ffffff
	use({
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({ "*" })
		end,
	})

	-- toggle terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("configs.toggleterm")
		end,
	})

	-- Wich key
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({})
		end,
	})

	-- Git
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("configs.gitsigns")
		end,
	})

	-- to comment code easily using leader + gc in visual mode
	use("tpope/vim-commentary")

	-- autopairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- null-ls for code formatting
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("configs.null-ls")
		end,
		requires = { "nvim-lua/plenary.nvim" },
	})
	use({ "mhartington/formatter.nvim" })

	--end of the function
end)
