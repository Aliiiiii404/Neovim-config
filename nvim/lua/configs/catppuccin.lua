local M = {} 

function M.setup()
  local colors = require("catppuccin.palettes").get_palette()

  require("catppuccin").setup({
    flavour = "mocha", -- latte, espresso, patte, mocha, blueberry, blackberry, bubblegum, chocolate
    background = {
      light = "latte",
      dark = "mocha",
    },
    transparent_background = true,
    show_end_of_buffer = false,
    term_colors = false,
    dim_inactive = {
      enabled = false,
      shade = "dark",
      percentage = 0.15,
    },
    no_bold = false,
    no_italic = false,
    style = {
      fucntions = { "italic" }
      keywords = { "bold" },
      numbers = { "italic" },
      loops = { "italic" },
      conditionals = { "italic" },
      variables = {},
      strings = {},
      comments = { "italic" },
      types = {},
      links = {"underline"},
      operators = {},
    }, 
    integrations = {
      cmp = true,
      hop = true,
      mason = true,
      mini = false,
      neotree = true,
      nvimtree = false,
      which_key = true,
      dashboard = true,
      dop = { enabled = true, enable_url = true },
    },
  })
end

return M
