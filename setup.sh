#!/bin/sh
#Download packer 
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
#Download clax.nvim
git clone --depth 1 https://github.com/spirizeon/clax.nvim ~/.config/nvim
#set the clax.nvim default theme
cp ~/.config/nvim/clax.lua ~/.local/share/nvim/site/pack/packer/start/startup.nvim/lua/startup/themes
#confirmation message
echo "config ready!"
echo "OPEN NVIM AND RUN ':PackerSync' FOR FINAL SETUP!" 

