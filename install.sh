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

# Nerd Font symbols only; the terminal falls back to it for icon glyphs
install_nerd_font_symbols() {
    local font_dir="$HOME/.local/share/fonts/NerdFontsSymbolsOnly"
    if fc-list | grep -q "Symbols Nerd Font"; then
        echo "Nerd Font symbols are already installed."
        return
    fi
    mkdir -p "$font_dir"
    curl -fsSL -o /tmp/NerdFontsSymbolsOnly.zip \
        https://github.com/ryanoasis/nerd-fonts/releases/latest/download/NerdFontsSymbolsOnly.zip
    unzip -oq /tmp/NerdFontsSymbolsOnly.zip -d "$font_dir"
    rm /tmp/NerdFontsSymbolsOnly.zip
    fc-cache -f "$font_dir"
    echo "Nerd Font symbols have been installed."
}

rm -rf "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim"
cp -r config/nvim/* $HOME/.config/nvim
install_git_prompt
install_nerd_font_symbols
echo "Dotfiles has been installed to $HOME"
