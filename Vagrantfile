# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "okeeffe-xp-ie6.box"

  config.vm.network "forwarded_port", guest: 4444, host: 4444

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  end

  config.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision.ps1"

end
