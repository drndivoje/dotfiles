#!/bin/bash

if [ -z "$HOME" ]; then
    echo "Error: \$HOME variable is not set."
    exit 1
fi

install_git_prompt() {
    cp git-prompt.sh "$HOME/.git-prompt.sh"
    if [ -n "$ZSH_VERSION" ]; then
        if grep -Fxq ". ~/.git-prompt.sh" "$HOME/.zshrc"; then
            echo "Git prompt is already configured in Zsh."
            return
        fi
        echo ". ~/.git-prompt.sh" >> "$HOME/.zshrc"
        echo "setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '" >> "$HOME/.zshrc"
    elif [ -n "$BASH_VERSION" ]; then
        if grep -Fxq ". ~/.git-prompt.sh" "$HOME/.bashrc"; then
            echo "Git prompt is already configured in Bash."
            return
        fi
        echo ". ~/.git-prompt.sh" >> "$HOME/.bashrc"
        echo "PS1='[\u@\h \W\$(__git_ps1 \" (%s)\")]\$ '" >> "$HOME/.bashrc"
    else
        echo "Skip copy git prompt"
    fi
}

install_kitty() {
    if ! command -v kitty &> /dev/null; then
        echo "Kitty is not installed. Skipping Kitty configuration."
        return
    fi
    rm -rf "$HOME/.config/kitty"
    mkdir -p "$HOME/.config/kitty"
    cp -r config/kitty/* $HOME/.config/kitty
    echo "Kitty configuration has been installed."
}

rm -rf "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim"
cp -r config/nvim/* $HOME/.config/nvim
install_git_prompt
install_kitty
echo "Dotfiles has been installed to $HOME"