#!/usr/bin/python
from plumbum.cmd import sudo

help_text = "Add Description Here"

sudo apt-get install -y\
    nodejs
    npm

echo "(+) Installing NodeJS Packages."
sudo npm install bower gulp grunt-cli n -g

# Permissions for local NPM folder
sudo chown -R $(whoami) ~/.npm

echo "(+) Complete! Run with $ node and $npm."


load_file_warning()
