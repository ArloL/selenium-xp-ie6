# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "okeeffe-xp-ie6.box"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  end

  config.vm.provision "shell", path: "provision-timezone.bat"
  config.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-java.ps1"
  config.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-iedriverserver.ps1"
  config.vm.provision "shell", path: "provision-selenium.ps1"

  config.vm.define "hub" do |m|
    m.vm.hostname = "hub"

    m.vm.network "forwarded_port", guest: 4444, host: 4444

    m.vm.network "private_network", ip: "192.168.205.10"

    m.vm.provision "shell", path: "provision-selenium-hub.ps1"
    m.vm.provision "shell", path: "provision-selenium-node.ps1", args: ["192.168.205.10", "192.168.205.10"]
    m.vm.provision "shell", inline: "Restart-Computer"
  end

  config.vm.define "node1" do |m|
    m.vm.hostname = "node1"

    m.vm.network "private_network", ip: "192.168.205.11"

    m.vm.provision "shell", path: "provision-selenium-node.ps1", args: ["192.168.205.10", "192.168.205.11"]
    m.vm.provision "shell", inline: "Restart-Computer"
  end

end
