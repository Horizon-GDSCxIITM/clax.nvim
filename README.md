# Clax.nvim - Lightning fast, Lightweight Neovim Distribution

Welcome to Clax.nvim, your ultimate Neovim distribution for a seamless and efficient editing experience. This distribution is built for speed, with a lightweight design tailored for both beginners and experts. Clax.nvim leverages the power of Packer.nvim to make plugin management easy and customizable.

> This project is dedicated to my friend "Clax", in a stupid attempt to make him install Arch Linux (Lol)
## Features:

- **Blazing Speed:** Clax.nvim is optimized for speed, ensuring a snappy and responsive editing environment, even for large codebases.
  
- **Lightweight:** Enjoy the power of Neovim without unnecessary bloat. Clax.nvim keeps things minimal, providing a streamlined setup for both performance and simplicity.

- **User-Friendly:** Designed with beginners in mind, Clax.nvim offers an intuitive configuration that's easy to understand and use right out of the box.

- **Customizable:** Tailor your Neovim experience to your preferences with extensive customization options. Whether you're a minimalist or a power user, Clax.nvim adapts to your workflow.

- **Packer.nvim Integration:** Effortlessly manage plugins with Packer.nvim, ensuring a clean and organized configuration that's easy to maintain.

## Installation:
Clone packer.nvim and source files
```bash
mkdir ~/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone -b dev  --depth 1 https://github.com/spirizeon/clax.nvim
```
Install packer modules
```bash
cd clax.nvim
cp init.lua ~/.config/nvim/
nvim +PackerInstall # Just press [ENTER] at any prompts
``` 
Set the custom theme and update the config
```bash
cp clax.lua ~/.local/share/nvim/site/pack/packer/start/startup.nvim/lua/startup/themes/
```
Install 
```
nvim #for installing treesitter modules
nvim +PackerSync # Just press [ENTER] at any prompts
```

Exit and restart nvim (ENJOY!)
```
nvim
```

## Configuration:

Explore the `init.lua` file to customize keybindings, plugins, and other settings to suit your workflow. The Packer.nvim integration provides a clean and organized way to manage your plugins.

## Contribute:

We welcome contributions! Whether it's bug fixes, new features, or optimizations, feel free to open issues and pull requests.

Join our growing community and make Clax.nvim even better!

Happy coding! 🚀

