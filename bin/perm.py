#!/usr/bin/python
from plumbum.cmd import sudo

help_text = "Add Description Here"

# Create user Permissions for usr/local
sudo groupadd local
sudo usermod -a -G local $USER
sudo chgrp -R local /usr/local
sudo chmod -R g+rwx /usr/local

load_file_warning()
