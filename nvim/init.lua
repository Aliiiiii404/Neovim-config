require("settings")
require("plugins")
require("maps")
require("nvim-web-devicons").setup({ default = true })

-- Theme
local themeStatus, kanagawa = pcall(require, "kanagawa")

if themeStatus then
	vim.cmd("colorscheme kanagawa")
else
	return
end
