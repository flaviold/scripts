#!/bin/bash

# Neovim install
if ! command -v nvim 2>&1 >/dev/null; then
  echo "Installing neovim!"
  sudo apt install neovim
else
  echo "neovim version: $(nvim --version)"
fi

# LazyVim install
if [ -d "~/.config/nvim" ]
then
    echo "LazyVim installed!"
else
    echo "Installing LazyVim!"
    git clone https://github.com/flaviold/starter.git ~/.config/nvim
fi
