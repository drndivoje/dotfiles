#!/bin/bash

if [ -z "$HOME" ]; then
    echo "Error: \$HOME variable is not set."
    exit 1
fi

rm -rf "$HOME/.config/nvim"
rm -rf "$HOME/.config/kitty"
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/kitty"
cp -vr config/nvim/* $HOME/.config/nvim
cp -vr config/kitty/* $HOME/.config/kitty
echo "Dotfiles has been installed to $HOME"