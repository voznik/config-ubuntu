#!/usr/bin/python
from plumbum.cmd import sudo

help_text = "Add Description Here"

#/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the ./install.sh script."
    exit
fi

sudo apt-get install -y\
    default-jre

# IMPORTANT: Do NOT have a trailing \ on the LAST item!

echo "(+) Complete! Java Runtime in installed."

load_file_warning()
