# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "fix-no-tty", type: "shell" do |s|
    s.privileged = false
    s.inline = "sudo sed -i '/tty/!s/mesg n/tty -s \\&\\& mesg n/' /root/.profile"
  end
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.synced_folder "./notebook", "/home/vagrant/notebook", disabled: false
  config.vm.network "forwarded_port", guest: 8888, host: 8889, auto_correct: true

  config.vm.provision :shell, run: "always", path: "startup.sh"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.customize ['modifyvm', :id, "--chipset", "ich9"]
    vb.memory = 4096
    vb.cpus = 2
  end
end
