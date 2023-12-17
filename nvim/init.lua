require("settings")
require("plugins")
require("maps")
require("nvim-web-devicons").setup({ default = true })
require("mason").setup()
require("mason-lspconfig").setup()
require("telescope").load_extension("fzf")
require("telescope").setup({
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		},
	},
})
-- setup for the icons
require("nvim-web-devicons").setup({
	default = true,
	override = {
		["JetBrainsMono Nerd Font"] = {
			icon = "",
			color = "#ffb86c",
			name = "JetBrainsMono Nerd Font",
		},
	},
})
-- Theme
-- local themeStatus, kanagawa = pcall(require, "kanagawa")
local themeStatus, tokyonight = pcall(require, "tokyonight")
-- local themeStatus, catppuccin = pcall(require, "catppuccin")

if themeStatus then
	-- vim.cmd("colorscheme kanagawa")
	vim.cmd("colorscheme tokyonight-night")
	-- vim.cmd("colorscheme catppuccin")
else
	return
end
