#!/bin/bash

# Zsh install
if ! command -v zsh 2>&1 >/dev/null; then
  echo "Installing zsh!"
  sudo apt install zsh
else
  echo "zsh version: $(zsh --version)"
fi

# Oh My Zsh install
if [ -d "~/.oh-my-zsh" ]
then
    echo "Oh My Zsh installed!"
else
    echo "Installing Oh My Zsh!"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

curl https://raw.githubusercontent.com/flaviold/scripts/refs/heads/oh-my-zsh/src/.zshrc > ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Setup completed!"
echo "Run 'chsh -s \$(which zsh)' to set zsh as default!"
