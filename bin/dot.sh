#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the installer script."
    exit
fi

# Ensure the dotfile submodule is installed
if [ "$(ls -A $PROJECT_DOTFILE_PATH)"  ]; then
    echo "(+) Dotfiles exists, overwriting old.";
else
    echo "(?) Tnstall dotfiles management tool"
    pip install dotfiles
    sleep 10
    echo "(?) Download dotfiles from own repo"
    git clone git@github.com:voznik/config-ubuntu.git $HOME_PATH/Dotfiles
    sleep 10
    exit
fi

# source $PROJECT_DOTFILE_PATH/copy-dotfiles.sh
dotfiles --sync

echo "(+) Complete! Make sure to $ source $HOME_PATH/.bashrc && source $HOME_PATH/.profile"

if [ $SKIP_SLEEP == false ]; then
    sleep 4
fi
