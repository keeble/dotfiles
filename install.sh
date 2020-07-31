#!/bin/zsh

echo "Don't forget to install ripgrep if you don't have it already"
echo "$ sudo apt-get install ripgrep"
echo "$ or google it"
# make undotree directory
mkdir ~/.vim/undotree
ln -s "$(pwd)/vimrc" ~/.vimrc
