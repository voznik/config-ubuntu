#!/bin/bash
#
# This will automatically install a lot of the packages for a quick start.
if [[ $USER == "root" ]]; then
    "You should not run this as the root user, this configures local user files!"
fi

# Temporary Environment Variable.
export OS_CODENAME=`lsb_release -s -c`
export INSTALL_SCRIPT=true
export PROJECT_BIN_PATH=$PWD/bin    # (NO Trailing Slash!)
export PROJECT_FILE_PATH=$PWD/files  # (NO Trailing Slash!)
export PROJECT_TEMP_PATH=$PWD/tmp    # (NO Trailing Slash!)

echo "====================================================================="
echo ""
echo "                        JREAM - Ubuntu Server                        "
echo ""
echo " RECOMMENDED: Run 'ppa' first to prevent any problems!"
echo ""
echo " * To exit at anytime press CTRL+C"
echo " * Installation runs after command is entered."
echo ""
echo "====================================================================="
echo ""

while true; do
cat <<- command_list
    Servers:
    --------
    apache        Installs Apache
    nginx         Installs NGINX

    Databases:
    ----------
    mysql         Install MySQL, MySQL-Workbench, common, utils
    mongo         Install MongoDB Community Edition

    Languages:
    ----------
    java          Install JRE and JDK (default-jre, not Oracle)
    node          Install NodeJS (nodejs, npm: n, bower, gulp)
    php5          Installs PHP5 and popular packages
    php7          Installs PHP7 and popular packages
    py            Install Python packages (pip, bpython,
                    python-dev, mycli, virtualenvwrapper)
    rb            Install Ruby (ruby, ruby-dev, gem)
    redis         Install Redis (redis-server)

    Frameworks:
    -----------
    php5phalcon   Install Phalcon PHP 5.x Framework (Adds PPA)
    php7phalcon   Install Phalcon PHP 7.x Framework (Adds PPA)
    phpcomposer   Installs User Global PHP Composer packages such as:
                    prestissimo, phpunit, dbunit, code coverage, phing,
                    phpcpd, phploc, phpmd, phpdocumentor, etc.

    DevOps:
    -------
    docker        Install Docker
    ansible       Install Ansible Provisioner
    saltstack     Install SaltStack Provisioner
    consul        Install Hashicorp Consul
    nomad         Install Hashicorp Nomad
    packer        Install Hashicorp Packer
    serf          Install Hashicorp Serf
    terraform     Install Hashicorp Terraform
    vault         Install Hashicorp Vault
    vagrant       Install Hashicorp Vagrant

    Utilities:
    ----------
    dot           Copy Dotfiles (.bashrc, .gitconfig, .gitignore)
    perm          Update /usr/local permissions:
                    Creates Group "local", adds you to it, sets
                    /usr/local to that group and adds permissions
    security      Install ClamAV, RKHunter
                    (read instructions after install)
    util          Install Utilities:
                     git, curl, htop, unzip, terminator,
                     tmux, screen)
    vim           Install Vim (.vimrc and Vundle Plugins)

    Quit:
    -----
    q             Quit (or CTRL + C)

command_list

echo ""
echo "====================================================================="
echo ""

read -p "Type a Command: " cmd

    case $cmd in
        ansible)
            bash ./bin/server/ansible.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        apache)
            bash ./bin/server/apache.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        composerusr)
            bash ./bin/server/composer-global-user.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        consul)
            bash ./bin/server/hashicorp/consul.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        dot)
            bash ./bin/dot.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        docker)
            bash ./bin/server/docker.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        java)
            bash ./bin/server/java.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        mongo)
            bash ./bin/server/mongo.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        mysql)
            bash ./bin/server/mysql.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        nginx)
            bash ./bin/server/nginx.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        node)
            bash ./bin/server/node.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        nomad)
            bash ./bin/server/hashicorp/nomad.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        packer)
            bash ./bin/server/hashicorp/packer.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        perm)
            bash ./bin/perm.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        php5phalcon)
            bash ./bin/server/php5-phalcon.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        php7phalcon)
            bash ./bin/server/php7-phalcon.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        php5)
            bash ./bin/server/php5.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        php7)
            bash ./bin/server/php7.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        py)
            bash ./bin/server/py.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        rb)
            bash ./bin/server/rb.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        redis)
            bash ./bin/server/redis.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        saltstack)
            bash ./bin/server/saltstack.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        serf)
            bash ./bin/server/hashicorp/serf.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        security)
            bash ./bin/security.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        terraform)
            bash ./bin/server/hashicorp/terraform.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        util)
            bash ./bin/util.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        vagrant)
            bash ./bin/server/hashicorp/vagrant.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        vault)
            bash ./bin/server/hashicorp/vault.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        vim)
            bash ./bin/vim.sh
            echo ""
            echo "====================================================================="
            echo ""
            ;;
        q)
            exit 1
            ;;
        *)
            echo ""
            echo "    (!) OOPS! You typed a command that's not available."
            echo ""
            echo "====================================================================="
            echo ""

    esac


done
