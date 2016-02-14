#!/usr/bin/python
from plumbum.cmd import sudo

help_text = "Add Description Here"

sudo apt-get install -y\
    python-dev\
    python-pip

# IMPORTANT: Do NOT have a trailing \ on the LAST item!

sudo pip install virtualenvwrapper fabric mycli --upgrade

echo "(+) Complete! Run with $ python and $ pip"


load_file_warning()
