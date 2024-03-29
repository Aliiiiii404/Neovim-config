# Neovim config files

This is my current neovim config with [lazy.nvim](https://github.com/folke/lazy.nvim) as a plugin manager.
### ScreenShots

![Image Alt Text](https://github.com/Aliiiiii404/Neovim-config/blob/main/screenshots/neovim-alpha.png)
![Image Alt Text](https://github.com/Aliiiiii404/Neovim-config/blob/main/screenshots/cmp-screen.png)
![Image Alt Text](https://github.com/Aliiiiii404/Neovim-config/blob/main/screenshots/telescope.png)

### Installation

##### backup your old nvim config and clone this repository :

```bash
mv ~/.config/nvim ~/.config/nvim.backup
rm -rf ~/.local/share/nvim
git clone --depth 1 https://github.com/Aliiiiii404/Neovim-config
mv Neovim-config/nvim ~/.config/
```
#### run Neovim and let lazy install all the plugins:

```bash
nvim
```

### Project Structure

```plaintext
📂 ~/.config/nvim
├── 📂 lua/
│    └── 📂 configs/
│    └── 🌑 plugins.lua
│    └── 🌑 settings.lua
│    └── 🌑 maps.lua
└── 🌑 init.lua
```

### Plugins Used

- [https://github.com/hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [https://github.com/williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [https://github.com/neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [https://github.com/catppuccin/nvim](https://github.com/catppuccin/nvim)
- [https://github.com/rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [https://github.com/folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [https://github.com/norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [https://github.com/nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [https://github.com/nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [https://github.com/nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [https://github.com/nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [https://github.com/nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [https://github.com/windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [https://github.com/akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [https://github.com/lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [https://github.com/tpope/vim-commentary](https://github.com/tpope/vim-commentary)
- [https://github.com/windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [https://github.com/jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [https://github.com/mhartington/formatter.nvim](https://github.com/mhartington/formatter.nvim)
- [https://github.com/folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [https://github.com/folke/noice.nvim](https://github.com/folke/noice.nvim)
- [https://github.com/lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [https://github.com/folke/flash.nvim](https://github.com/folke/flash.nvim)
