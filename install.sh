#!/bin/bash

if [ -z "$HOME" ]; then
    echo "Error: \$HOME variable is not set."
    exit 1
fi

cp -r .config "$HOME"
echo "Dotfiles has been installed to $HOME"
