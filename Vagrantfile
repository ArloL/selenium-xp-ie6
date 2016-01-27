# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
  end

  config.vm.define "win10-edge-jre8" do |m|
    m.vm.box = "okeeffe-win10-edge"

    m.vm.hostname = "win10-edge-jre8"

    m.vm.provision "shell", path: "provision-win10-proxy.ps1"
    m.vm.provision "shell", path: "provision-bginfo.bat"    
    m.vm.provision "shell", path: "provision-win10-timezone.bat"
    m.vm.provision "shell", path: "provision-win10-powersettings.bat"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-jre8u71.ps1"
  end

  config.vm.define "win10-edge-jre7" do |m|
    m.vm.box = "okeeffe-win10-edge"

    m.vm.hostname = "win10-edge-jre7"

    m.vm.provision "shell", path: "provision-win10-proxy.ps1"
    m.vm.provision "shell", path: "provision-bginfo.bat"
    m.vm.provision "shell", path: "provision-win10-timezone.bat"
    m.vm.provision "shell", path: "provision-win10-powersettings.bat"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-jre7u80.ps1"
  end

  config.vm.define "selenium-hub" do |m|
    m.vm.box = "okeeffe-winxp-ie6"

    m.vm.hostname = "selenium-hub"

    m.vm.network "forwarded_port", guest: 4444, host: 4444

    m.vm.network "private_network", ip: "192.168.205.10"

    m.vm.provision "shell", path: "provision-winxp-timezone.bat"
    m.vm.provision "shell", path: "provision-winxp-powersettings.bat"
    m.vm.provision "shell", path: "provision-winxp-proxy.bat"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-jre.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-selenium.ps1"
    m.vm.provision "shell", path: "provision-selenium-hub.ps1"
    m.vm.provision "shell", inline: "shutdown -t 20 -r -f"
  end

  config.vm.define "selenium-winxp-ie6" do |m|
    m.vm.box = "okeeffe-winxp-ie6"

    m.vm.hostname = "selenium-winxp-ie6"

    m.vm.network "private_network", ip: "192.168.205.11"

    m.vm.provision "shell", path: "provision-winxp-timezone.bat"
    m.vm.provision "shell", path: "provision-winxp-powersettings.bat"
    m.vm.provision "shell", path: "provision-winxp-proxy.bat"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-jre.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-selenium.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-iedriverserver.ps1"
    m.vm.provision "shell", path: "provision-selenium-node.ps1", args: ["192.168.205.10", "192.168.205.11"]
    m.vm.provision "shell", inline: "shutdown -t 20 -r -f"
  end

  config.vm.define "selenium-win81-ie11" do |m|
    m.vm.box = "okeeffe-win81-ie11"

    m.vm.hostname = "selenium-win81-ie11"

    m.vm.network "private_network", ip: "192.168.205.12"

    m.vm.provision "shell", path: "provision-ie11.bat"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-jre.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-selenium.ps1"
    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-iedriverserver.ps1"
    m.vm.provision "shell", path: "provision-selenium-node.ps1", args: ["192.168.205.10", "192.168.205.12"]
    m.vm.provision "shell", inline: "shutdown -t 20 -r -f"
  end

  config.vm.define "selenium-phantomjs" do |m|
    m.vm.box = "okeeffe-win81-ie11"

    m.vm.hostname = "selenium-phantomjs"

    m.vm.network "private_network", ip: "192.168.205.13"

    m.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-phantomjs.ps1"
    m.vm.provision "shell", path: "provision-phantomjs-node.ps1", args: ["192.168.205.10", "192.168.205.13"]
    m.vm.provision "shell", inline: "shutdown -t 20 -r -f"
  end

end
