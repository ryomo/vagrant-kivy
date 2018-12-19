# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  # config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "app", "/home/vagrant/app", create: true
  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true
    vb.memory = "4096"
  end
  config.vm.provision "shell", privileged: false, :path => 'vagrantconf/provision.sh'
end
