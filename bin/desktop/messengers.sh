#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the installer script."
    exit
fi


echo "(+) Installing: skype"
sudo snap install --classic skype slack
sudo snap install telegram discord

echo "(+) Complete! Run with $ skype (or check your apps menu)"

if [ $SKIP_SLEEP == false ]; then
    sleep 4
fi
