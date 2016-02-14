#!/usr/bin/python
from os.path import dirname, realpath
from plumbum import local, colors
from plumbum.cmd import sudo

# @TODO NOTES https://plumbum.readthedocs.org/en/latest/


# Set the Folders
CURRENT_DIR = dirname(realpath(__file__))
FILES_DIR = {
    "BIN":   "%s/bin" % local.cwd,
    "FILES": "%s/files" % local.cwd,
    "TMP":   "%s/tmp" % local.cwd,
}

def load_file_warning():
    """Prevent Loading /bin files independently
    """
    if __name__ == "__main__":
        print "This file is run from install.py"


# Available Commands
# @TODO Produce command list from bin folder
cmd_list = """
    CMD         PROCESS
    ----        --------------------------------
    A           Run All Commands
    ----        --------------------------------
    dot         Copy Dotfiles (.bashrc, .vimrc, .gitconfig, .gitignore)
    gnome       Install Gnome 3 GUI Tools (You toggle at login or see README)
    gui         Install Ubuntu GUI Tools (Compiz, Unity Tweak)
    jre         Install Java Runtime Enviroment (Default)
    lamp        Install LAMP (apache, php5, mysql)
    node        Install NodeJS (nodejs, bower, gulp, grunt-cli)
    perm        Update /usr/local permissions
    phalcon     Install PhalconPHP (Adds PPA)
    ppa         Install PPAs (nodejs, wine, git, numix icons)
    py          Install Python (python, python-dev, python-pip)
    redis       Install Redis (redis-server)
    util        Install Utilities (vim, git, curl, htop, unzip, etc)
    q           Quit (or CTRL + C)
    ========================================
"""


# Show Welcome Message
with colors.red:
    print "========================================"

with colors.green:
    print (colors.bold | "\tJREAM - Config Ubuntu")

with colors.white:

    print """
  RECOMMENDED: Run 'ppa' first to prevent any problems!

  * To exit at anytime press CTRL+C
  * Select a Package to install (Or, Type A at anytime to install ALL)
  * Installation runs after command is entered.
  """

with colors.red:
    print "========================================"


while (True):
    print cmd_list
    cmd = raw_input("Enter a Command: ").strip()

    # @TODO: Make all scripts python, not bash.
    # Autoread folder
    if cmd is "A":
        pass
        # for entry in ./bin/*
        # do
        #     bash $entry
        # done
    elif cmd is "dot":
        # bash ./bin/dot.sh
        pass
    elif cmd is "gnome":
        # bash ./bin/gnome.sh
        pass
    elif cmd is "gui":
        # bash ./bin/gui.sh
        pass
    elif cmd is "jre":
        # bash ./bin/jre.sh
        pass
    elif cmd is "lamp":
        # bash ./bin/lamp.sh
        pass
    elif cmd is "node":
        # bash ./bin/node.sh
        pass
    elif cmd is "perm":
        # bash ./bin/perm.sh
        pass
    elif cmd is "phalcon":
        # bash ./bin/phalcon.sh
        pass
    elif cmd is "ppa":
        # bash ./bin/ppa.sh
        pass
    elif cmd is "py":
        # bash ./bin/py.sh
        pass
    elif cmd is "rb":
        # bash ./bin/rb.sh
        pass
    elif cmd is "redis":
        # bash ./bin/redis.sh
        pass
    elif cmd is "util":
        # bash ./bin/util.sh
        pass
    else:
        print """
            (!) OOPS! You typed a command that's not available.

            =====================================================================
            """

# This must be the main file
if __name__ != '__main__':
    print 'install.py must run as the main file.'
