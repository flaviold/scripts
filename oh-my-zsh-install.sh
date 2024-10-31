#!/bin/bash

# Zsh install
if ! command -v zsh 2>&1 >/dev/null; then
  echo "Installing zsh!"
  apt install zsh
else
  echo "zsh version: $(zsh --version)"
fi

# Set zsh as default
if [ "$SHELL" = "/usr/bin/zsh" ]; then
  echo "zsh is the default shell!"
else
  echo "Setting zsh as the default shell!"
  chsh -s "/usr/bin/zsh"
fi

# Oh My Zsh install
if [ -d "~/.oh-my-zsh" ]
then
    echo "Oh My Zsh installed!"
else
    echo "Installing Oh My Zsh!"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
