#!/usr/bin/python
from plumbum.cmd import sudo

help_text = "Add Description Here"

# These are core tools
sudo["apt-get install -y"]
sudo apt-get install -y\
    vim\
    unzip\
    bzip2\
    git\
    mercurial\
    curl\
    htop\
    xclip\
    screen\
    terminator\
    tmux

# IMPORTANT: Do NOT have a trailing \ on the LAST item!


load_file_warning()
