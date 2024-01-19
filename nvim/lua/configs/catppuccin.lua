require("catppuccin").setup({
  flavour = "mocha",             -- latte, frappe, macchiato, mocha
  transparent_background = false, -- disables setting the background color ( set this to true to get a transparent background).
  show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
  term_colors = false,           -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false,             -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15,           -- percentage of the shade to apply to the inactive window
  },
  no_italic = false,             -- Force no italic
  no_bold = false,               -- Force no bold
  no_underline = false,          -- Force no underline
  styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" },     -- Change the style of comments
    conditionals = { "italic" },
  },
  color_overrides = {
    mocha = {
      base = "#181826",
    },
  },
  custom_highlights = function(colors)
    return {
      Comment = { fg = colors.flamingo },
      TabLineSel = { bg = colors.pink },
      CmpBorder = { fg = colors.surface2 },
      Pmenu = { bg = colors.none },
    }
  end,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
  },
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")
