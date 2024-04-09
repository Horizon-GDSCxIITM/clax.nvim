#!/bin/sh
mkdir ~/.config/nvim

#Clone dependencies
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone --depth 1 https://github.com/redxdager/clax.nvim.git

#enter directory
cd clax.nvim

#copy nvim config and theme
cp init.lua ~/.config/nvim/ 
cp clax.lua ~/.local/share/nvim/site/pack/packer/start/startup.nvim/lua/startup/themes/

#Fire ups nvim (neovim)
nvim +PackerInstall +TSUpdate
