#!/bin/bash
echo ""
echo "Don't forget to install ripgrep if you don't have it already"
echo "$ sudo apt-get install ripgrep"
echo "$ or google it"
echo ""

# make undotree directory
mkdir -p ~/.vim/undotree

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# if there's a .vimrc already, tell user and abort unless -f flag found
if [ -f ~/.vimrc ] || [ -f ~/.bashrc_local ]; then
    if [ "$1" == "-f" ]; then
        echo "Removing old .vimrc "
        rm -rf ~/.vimrc;
    else
        echo "there is already a .vimrc. add -f to force the issue"
        exit 0
    fi
fi
ln -s "$SCRIPTPATH/vimrc" ~/.vimrc
echo ""
echo "ln -s "$SCRIPTPATH/bashrc_local" ~/.bashrc_local"
echo "... to also link the bashrc"

