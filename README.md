# Installation
```
# Clone configuration
git clone https://github.com/robw4/vim.git ~/.vim
# Add Vundle Plugin Maager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall  # Install Plugins
cd ~/.vim/bundle/YouCompleteMe
python3 install.py

# If vim8 is not available install in Conda environemnt
# Note: For this to work there must be a mininconda installation
# in your home directory or you must have sys admin rights
conda install -c conda-forge vim

# To enable colorr scheme make sure to add to shel rc file
export TERM=screen-256color
```
