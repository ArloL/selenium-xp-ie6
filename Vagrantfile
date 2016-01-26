# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "okeeffe-xp-ie6.box"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
  end

  config.vm.define "win10-edge" do |m|
    m.vm.box = "okeeffe-win10-edge"

    m.vm.hostname = "win10-edge"

    m.vm.provision "shell", path: "provision-win10-timezone.bat"
    m.vm.provision "shell", path: "provision-win10-powersettings.bat"
    m.vm.provision "shell", path: "provision-win10-proxy.bat"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-jre.ps1"
  end

  config.vm.define "hub" do |m|
    m.vm.hostname = "hub"

    m.vm.network "forwarded_port", guest: 4444, host: 4444

    m.vm.network "private_network", ip: "192.168.205.10"

    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-jre.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-selenium.ps1"
    m.vm.provision "shell", path: "provision-selenium-hub.ps1"
    m.vm.provision "shell", inline: "shutdown -t 20 -r -f"
  end

  config.vm.define "node1" do |m|
    m.vm.hostname = "node1"

    m.vm.network "private_network", ip: "192.168.205.11"

    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-jre.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-selenium.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-iedriverserver.ps1"
    m.vm.provision "shell", path: "provision-selenium-node.ps1", args: ["192.168.205.10", "192.168.205.11"]
    m.vm.provision "shell", inline: "shutdown -t 20 -r -f"
  end

  config.vm.define "node2" do |m|
    m.vm.box = "okeeffe-win81-ie11.box"

    m.vm.hostname = "node2"

    m.vm.network "private_network", ip: "192.168.205.12"

    m.vm.provision "shell", path: "provision-ie11.bat"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-jre.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-selenium.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-iedriverserver.ps1"
    m.vm.provision "shell", path: "provision-selenium-node.ps1", args: ["192.168.205.10", "192.168.205.12"]
    m.vm.provision "shell", inline: "shutdown -t 20 -r -f"
  end

  config.vm.define "node3" do |m|
    m.vm.box = "okeeffe-win81-ie11.box"

    m.vm.hostname = "node3"

    m.vm.network "private_network", ip: "192.168.205.13"

    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-phantomjs.ps1"
    m.vm.provision "shell", path: "provision-phantomjs-node.ps1", args: ["192.168.205.10", "192.168.205.13"]
    m.vm.provision "shell", inline: "shutdown -t 20 -r -f"
  end

end
