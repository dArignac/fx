#!/bin/sh
echo "updating $HOME/.zshrc..."
[ -e $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.`date +%Y%m%d-%H%M%S`.bak
ln -s $HOME/.fx/zsh/.zshrc $HOME/.zshrc