# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.define "debian1-Server" do |vm1|
    vm1.vm.hostname = "debian1-Server"
    vm1.vm.box = "debian/contrib-jessie64"

    # config.vm.network "forwarded_port", guest: 80, host: 8080
    # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
    vm1.vm.network "private_network", ip: "192.168.33.10"
    # config.vm.network "public_network"

    vm1.vm.synced_folder "./html", "/var/www/html/"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    vm1.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
      vb.name = "debian1-Server"
      vb.gui = false
      vb.memory = "512"
    end
    #
#    vm1.vm.provision "shell", inline: <<-SHELL
#      apt-get update
#      apt-get install -y apache2
#    SHELL

    vm1.vm.provision "shell", run: "always", inline: <<-SHELL
      echo "Hello from server1"
    SHELL

    vm1.vm.provision "shell", path: "script.sh"

  end

#   config.vm.define "debian2-Server" do |vm2|
#     vm2.vm.hostname = "debian2-Server"
#     vm2.vm.box = "debian/contrib-jessie64"

#     # config.vm.network "forwarded_port", guest: 80, host: 8080
#     # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
#     vm2.vm.network "private_network", ip: "192.168.33.20"
#     # config.vm.network "public_network"

#     vm2.vm.synced_folder "./html", "/var/www/html/"

#     # Provider-specific configuration so you can fine-tune various
#     # backing providers for Vagrant. These expose provider-specific options.
#     # Example for VirtualBox:
#     #
#     vm2.vm.provider "virtualbox" do |vb|
#     #   # Display the VirtualBox GUI when booting the machine
#       vb.name = "debian2-Server"
#       vb.gui = false
#       vb.memory = "512"
#     end
#     #
#  #   vm2.vm.provision "shell", inline: <<-SHELL
#  #     apt-get update
#  #     apt-get install -y apache2
#  #   SHELL

#     vm2.vm.provision "shell", run: "always", inline: <<-SHELL
#       echo "Hello from server2"
#     SHELL

#     #vm2.vm.provision "shell", path: "script.sh"
#   end


#   config.vm.define "debian3-Server" do |vm2|
#     vm2.vm.hostname = "debian3-Server"
#     vm2.vm.box = "debian/contrib-jessie64"

#     # config.vm.network "forwarded_port", guest: 80, host: 8080
#     # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
#     vm2.vm.network "private_network", ip: "192.168.33.30"
#     # config.vm.network "public_network"

#     vm2.vm.synced_folder "./html", "/var/www/html/"

#     # Provider-specific configuration so you can fine-tune various
#     # backing providers for Vagrant. These expose provider-specific options.
#     # Example for VirtualBox:
#     #
#     vm2.vm.provider "virtualbox" do |vb|
#     #   # Display the VirtualBox GUI when booting the machine
#       vb.name = "debian3-Server"
#       vb.gui = false
#       vb.memory = "512"
#     end
#     #
#  #   vm2.vm.provision "shell", inline: <<-SHELL
#  #     apt-get update
#  #     apt-get install -y apache2
#  #   SHELL

#   #  vm3.vm.provision "shell", path: "script.sh"
#   end

end
