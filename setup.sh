#!/bin/bash
sudo apt update && sudo apt -y upgrade
sudo apt install -y curl git wget vim
sudo apt install -y zsh
yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sleep 1
sudo chsh -s $(which zsh) $(whoami)
sleep 1
sudo zsh
yes | curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
sudo source .zshrc
sudo nvm install --lts
