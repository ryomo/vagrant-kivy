#!/usr/bin/env bash

KIVY_CONF_PATH=conf/kivy_config.ini
VAGRANT_SSH_CONF_PATH=vagrantconf/vagrant-ssh.conf

if [[ ${#} != 1 ]]; then
    echo 'Usage: ./run.sh PYTHON_APP'
    exit 1
fi

vagrant ssh-config > ${VAGRANT_SSH_CONF_PATH}

if [[ -f ${KIVY_CONF_PATH} ]]; then
    scp -F ${VAGRANT_SSH_CONF_PATH} ${KIVY_CONF_PATH} default:~/.kivy/config.ini
fi

# Run the python script on the remote vagrant.
# `default`: Host name set in config file.
# `-F`: Specifies a config file.
# `-Y`: X11 forwarding.
ssh default -F ${VAGRANT_SSH_CONF_PATH} -Y "python3 ${1}"
