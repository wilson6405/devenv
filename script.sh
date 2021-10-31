#!/bin/sh

# Add the repository
## Neovim
sudo add-apt-repository ppa:neovim-ppa/unstable

## VS code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https

## zsh




# Update and install
sudo apt update
sudo apt install neovim code \
                 git tig \
                 zsh \

# Apply custom config
# cp ./cfg_file/xxx xxx