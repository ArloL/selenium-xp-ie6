# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "okeeffe-xp-ie6.box"

  config.vm.network "forwarded_port", guest: 4444, host: 4444

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  end

  config.vm.provision "shell", path: "provision-timezone.bat"
  config.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-java.ps1"
  config.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-iedriverserver.ps1"
  config.vm.provision "shell", inline: "powershell -File C:\\vagrant\\provision-selenium.ps1"
  config.vm.provision "shell", inline: "Restart-Computer"

end
