#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the installer script."
    exit
fi

sudo snap refresh
echo "(+) Installing: classic snaps"
sudo snap install --classic node
sudo snap install --classic skype
sudo snap install --classic slack
sudo snap install --classic sublime-text
sudo snap install --classic ubuntu-budgie-welcome
sudo snap install --classic vscode
sudo snap install --classic heroku
echo "(+) Installing: snaps"
sudo snap install discord
sudo snap install docker
sudo snap install gitkraken 
sudo snap install gravit-designer
sudo snap install mailspring 
sudo snap install postman
sudo snap install telegram-desktop
sudo snap install vlc

echo "(+) Complete! Snaps installed"
snap list

if [ $SKIP_SLEEP == false ]; then
    sleep 4
fi
