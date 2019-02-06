#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the installer script."
    exit
fi


echo "(+) Installing grub-customizer"

sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo apt-get install -y grub-customizer

# If error messages pop up after running the command
# sudo dpkg -i google-chrome*.deb then run the command
# sudo apt-get install -f

echo "(+) Complete! You can customize yor grub config (carefull...)"


if [ $SKIP_SLEEP == false ]; then
    sleep 4
fi
