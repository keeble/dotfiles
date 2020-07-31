#!/bin/bash

echo "Don't forget to install ripgrep if you don't have it already"
echo "$ sudo apt-get install ripgrep"
echo "$ or google it"
# make undotree directory
mkdir -p ~/.vim/undotree
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
ln -s "$SCRIPTPATH/vimrc" ~/.vimrc
