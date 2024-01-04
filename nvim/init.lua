require("settings")
require("plugins")
require("maps")
require("nvim-web-devicons").setup({ default = true })
require("mason").setup()
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
-- uncomment the theme you want to use and comment the others
require("configs.catppuccin")
--require("configs.tokyonight")
