# Neovim config files

This is my current neovim config with [packer](https://github.com/wbthomason/packer.nvim) as a plugin manager but it's currently unmaintained, so i'm probably gonna switch to lazy or something else.

### ScreenShots

![Image Alt Text](https://github.com/Aliiiiii404/Neovim-config/blob/main/screenshots/neovim-alpha.png)
![Image Alt Text](https://github.com/Aliiiiii404/Neovim-config/blob/main/screenshots/neovim-screen.png)
![Image Alt Text](https://github.com/Aliiiiii404/Neovim-config/blob/main/screenshots/telescope.png)

### Installation

##### backup your old nvim config and clone this repository :

```bash
mv ~/.config/nvim ~/.config/nvim.backup
rm -rf ~/.local/share/nvim
git clone --depth 1 https://github.com/Aliiiiii404/Neovim-config
mv Neovim-config/nvim ~/.config/
```

##### run nvim:

```bash
nvim
```

##### run this inside nvim to install all the plugins :

```bash
:PackerSync
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
