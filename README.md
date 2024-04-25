![image](https://github.com/Spirizeon/clax.nvim/assets/123345456/ac9a985b-51d1-4590-84df-9df411755acf)


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

### Install script

```
sh install.sh
```

### Manual Installation 
Clone packer.nvim and source files
```bash
mkdir ~/.config/nvim
```

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

```
git clone --depth 1 https://github.com/Horizon-GDSCxIITM/clax.nvim.git
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
Sync config
```
nvim +PackerSync +TSUpdate #Just press [ENTER] at any prompts
```

Exit and restart nvim (ENJOY!)
```
nvim
```
## Configuration:
![image](https://github.com/Spirizeon/clax.nvim/assets/123345456/270963a6-e8bc-45d4-b161-98ad895e5fc9)

### Keybinds
Here's a table of keybinds from your Lua file for the Neovim config:

| Keybind | Functionality |
| --- | --- |
| `<leader>ot` | Open a vertical split terminal |
| `<leader>pv` | Netrw command |
| `<leader>nt` | Neotree command |
| `<leader>md` | Toggle Markdown Preview (only works on .md files) |
| `<leader>ff` | Find files using telescope |
| `<leader>lg` | Live grep using telescope |
| `<leader>fb` | List buffers using telescope |
| `<leader>of` | List old files using telescope |
| `<leader>nf` | New file |
| `<A-,>` | Go to previous buffer |
| `<A-.>` | Go to next buffer |
| `<A-<>`, `<A->>` | Move to previous/next buffer |
| `<A-1>`, `<A-2>`, `<A-3>`, `<A-4>`, `<A-5>`, `<A-6>`, `<A-7>`, `<A-8>`, `<A-9>`, `<A-0>` | Go to buffer in position 1 through 9 or last |
| `<A-p>` | Pin/unpin buffer |
| `<A-c>` | Close buffer |
| `<C-p>` | Magic buffer-picking mode |
| `<Space>bb`, `<Space>bd`, `<Space>bl`, `<Space>bw` | Sort buffers by buffer number, directory, language, or window number |
| `<C-k>` | Select previous suggestion |
| `<C-j>` | Select next suggestion |
| `<C-b>` | Scroll docs up |
| `<C-f>` | Scroll docs down |
| `<C-Space>` | Show completion suggestions |
| `<C-e>` | Close completion window |
| `<CR>` | Confirm selection (without selecting) |

This table is based on the keybinds defined by default.
Explore the `init.lua` file to customize keybindings, plugins, and other settings to suit your workflow. The Packer.nvim integration provides a clean and organized way to manage your plugins.

## Uninstall
Simply run this command
```
rm -rf ~/.config/nvim ~/.local/share/nvim
```
## Contribute:

We welcome contributions! Whether it's bug fixes, new features, or optimizations, feel free to open issues and pull requests.

Join our growing community and make Clax.nvim even better!

Happy coding! 🚀

