#!/bin/bash

if ! command -v zsh 2>&1 >/dev/null; then
  echo "Installing zsh!"
  apt install zsh
else
  echo "zsh version: $(zsh --version)"
fi

if [ "$SHELL" = "/usr/bin/zsh" ]; then
  echo "zsh is the default shell!"
else
  echo "Setting zsh as the default shell!"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
