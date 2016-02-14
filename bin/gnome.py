#!/usr/bin/python
from plumbum.cmd import sudo

help_text = "Add Description Here"

if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the ./install.sh script."
    exit
fi

sudo apt-get install ubuntu-gnome-desktop

echo "(+) Gnome Complete! (You need to reboot)"
echo "(+) To re-configure your gdm/lightdm use: sudo dpkg-reconfigure gdm"
echo "(+) For extensions use Firefox at: https://extensions.gnome.org"

load_file_warning()
