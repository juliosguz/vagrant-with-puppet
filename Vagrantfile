# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "hashicorp/precise64"

  # Added by Julio
  #config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file = "basenode.pp"
  end


  # with 127.0.0.1:4567
  #config.vm.network :forwarded_port, host: 4567, guest: 80

  # with custom IP
  config.vm.network "private_network", ip: "192.168.50.4"

  config.vm.synced_folder "D:\\server\\www\\php_mysql_ubuntu12", "/var/www/"

end
