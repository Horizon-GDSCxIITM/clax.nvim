# Makes a directory
mkdir ~/.config/nvim

#Clones the repository into your local machine
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone --depth 1 https://github.com/spirizeon/clax.nvim.git

#Makes a directory named clax.nvim and copy the code
cd clax.nvim
cp init.lua ~/.config/nvim/

#Fire ups nvim (neovim)
nvim +PackerInstall
