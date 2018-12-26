#!/usr/bin/env bash

# `privileged:false` is set in Vagrantfile, so both `whoami` and $HOME are 'vagrant'.
cd ~

sudo add-apt-repository -y ppa:kivy-team/kivy && sudo apt-get update
#sudo apt-get upgrade -y

# Desktop Environment
sudo apt-get install -y lxde

# Python3, pip3
sudo apt-get install -y python3 python3-pip
mkdir -p ~/.local/bin
ln -s /usr/bin/python3 ~/.local/bin/python

#pip3 install --user pip  # This causes ImportError. https://github.com/pypa/pip/issues/5599

# Kivy
sudo apt-get install -y python3-kivy

# To run GUI apps via ssh
echo 'export DISPLAY=:0' >> .bashrc
