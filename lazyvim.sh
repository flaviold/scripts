#!/bin/bash

# Neovim install
if ! command -v nvim 2>&1 >/dev/null; then
  echo "Installing neovim!"
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
  sudo rm -rf /opt/nvim
  sudo tar -C /opt -xzf nvim-linux64.tar.gz
else
  echo "neovim version: $(nvim --version)"
fi

# LazyVim install
if [ -d ~/.config/nvim ]
then
    echo "LazyVim installed!"
else
    echo "Installing LazyVim!"
    git clone https://github.com/flaviold/starter.git ~/.config/nvim
fi
