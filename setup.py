#!/usr/bin/python
import sys
import os


def list_options():
    options = (
        ('apache', 'Install Apache'),
        ('nginx', 'Install NGINX'),
        ('phalcon', 'Install Phalcon for PHP7'),
        ('python', 'Install Python Packages'),
        ('ruby', 'Install Ruby'),
        ('dot', 'Install DOT files'),
        ('vim', 'Install VIM and Plugins'),
        ('q', 'Quit Setup')
    )

    print "================================================="
    print "Command \tDescription"
    print "================================================="

    for cmd, desc in options:
        print cmd + "\t\t" + desc

    print "================================================="

    # Get the user input
    cmd = raw_input("Command > ")
    return cmd.strip().lower()


cmd = list_options()


# Determine Command to Run
if cmd == 'apache':
    print "( + ) Installing Apache2"
    apt_install(['apache2', 'apache2-utils'])

elif cmd == 'nginx':
    print "( + ) Installing Nginx"
    apt_install(['nginx'])

elif cmd == 'phalcon':
    print "Installing Phalcon for PHP 7.0"
    print "Must add PPA"
    apt_install(['php7.0-phalcon'])

elif cmd == 'python':
    print 1
    pip_install(['virtualenvwrapper', 'fabric', 'mycli'])

elif cmd == 'ruby':
    print "( + ) Installing Ruby and Gem"
    apt_install(['ruby2.3', 'ruby2.3-dev', 'gem'])

elif cmd == 'dot':
    print "Adding Dotfiles"
    os.system("cp files")
    print 3

elif cmd == 'vim':
    print "( + ) Installing VIM and Addons"
    apt_install(['vim'])

elif cmd == 'q':
    sys.exit()

else:
    print "( ! ) Command not found"

# Reloop
list_options()


def apt_install(package_list):
    os.system('sudo apt-get install -y %s', package_list.join(" "))


def pip_insall(package_list):
    os.system('sudo pip install %s', package_list.join(" "))
