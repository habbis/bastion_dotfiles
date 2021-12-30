#!/bin/bash

command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "Installing fedora_dotfiles."

echo "Initializing submodule(s)"
git submodule update --init --recursive

source ~/bastion_dotfiles/install/link.sh
source ~/bastion_dotfiles/install/setup.sh
#source ~/fedora_dotfiles/install/git_config.sh


#echo "creating vim directories"
#mkdir -p ~/.vim-tmp
mkdir -p ~/bin/

echo "Done. Reload your terminal."
