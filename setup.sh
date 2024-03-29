#!/bin/bash
sudo apt update && sudo apt -y upgrade
sudo apt install -y curl git wget vim
sudo apt install -y zsh
yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s $(which zsh) $(whoami)
yes | curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
echo 'export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >>  ~/.zshrc
source .zshrc
nvm install --lts
exit
