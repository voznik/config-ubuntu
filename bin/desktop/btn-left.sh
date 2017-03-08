#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the installer script."
    exit
fi

gsettings set org.gnome.desktop.wm.preferences button-layout'close,minimize,maximize:'

if [ $SKIP_SLEEP == false ]; then
    sleep 4
fi
