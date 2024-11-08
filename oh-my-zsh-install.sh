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

source ~/.zshrc

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

curl https://raw.githubusercontent.com/flaviold/scripts/refs/heads/main/src/.zshrc > ~/.zshrc

echo "Setup completed!"
echo "Run 'chsh -s \$(which zsh)' to set zsh as default!"
