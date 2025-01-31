# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.


# aduser en servidor git
# ssh-keygen --> generar clave RSA en cliente con ssh-copy-id

#wp-cli 
#todos los usuarios en todos los departamentos
#para los repos
#git init --bare <nombre_del_repo>
#users 

Vagrant.configure("2") do |config|

 config.vm.define "gitserver" do |vm5|

    vm5.vm.hostname = "gitserver"
    vm5.vm.box = "debian/contrib-jessie64"

    #vm5.vm.network "forwarded_port", guest: 80, host: 8080
    # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
    vm5.vm.network "private_network", ip: "192.168.33.60"
    # config.vm.network "public_network"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    vm5.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
      vb.name = "gitserver"
      vb.gui = false
      vb.memory = "512"
    end

    vm5.vm.provision "shell", run: "always", inline: <<-SHELL
      echo "Hello from gitserver"
    SHELL

    vm5.vm.provision "shell", path: "git-server-setup.sh"

  end


  # DEV.AKME.EUS
  config.vm.define "dev.akme.eus" do |vm1|
    vm1.vm.hostname = "dev.akme.eus"
    vm1.vm.box = "debian/contrib-jessie64"

    
    # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
    vm1.vm.network "forwarded_port", guest: 80, host: 8080
    vm1.vm.network "private_network", ip: "192.168.33.10"
    # config.vm.network "public_network"

    vm1.vm.provision "file", source: "./conf/wp.sql", destination: "/home/vagrant/wp.sql"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    vm1.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
      vb.name = "dev.akme.eus"
      vb.gui = false
      vb.memory = "512"
    end

    vm1.vm.provision "shell", run: "always", inline: <<-SHELL
      echo "Hello from dev.akme.eus"
    SHELL

    vm1.vm.provision "shell", path: "server1.sh"


    vm1.vm.provision "file", 
      source: "./conf/wp.conf", 
      destination: "/tmp/wp.conf"
  
    vm1.vm.provision "shell",
      inline: "mv /tmp/wp.conf /etc/apache2/sites-available/wp.conf"

  
    vm1.vm.provision "file", 
      source: "./conf/config-default.php", 
      destination: "/tmp/config-default.php"
  
    vm1.vm.provision "shell",
      inline: "mv /tmp/config-default.php /etc/wordpress/config-default.php"
    
    vm1.vm.provision "shell", inline: <<-SHELL
      a2dissite 000-default
      a2ensite wp
      systemctl reload apache2
    SHELL
  end

  # TEST.AKME.EUS
  config.vm.define "test.akme.eus" do |vm2|
    vm2.vm.hostname = "test.akme.eus"
    vm2.vm.box = "debian/contrib-jessie64"

    #vm2.vm.network "forwarded_port", guest: 80, host: 8080
    # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
    vm2.vm.network "private_network", ip: "192.168.33.20"
    # config.vm.network "public_network"

    vm2.vm.provision "file", source: "./conf/wp.sql", destination: "/home/vagrant/wp.sql"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    vm2.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
      vb.name = "test.akme.eus"
      vb.gui = false
      vb.memory = "512"
    end

    vm2.vm.provision "shell", run: "always", inline: <<-SHELL
      echo "Hello from test.akme.eus"
    SHELL
    
    vm2.vm.provision "shell", path: "server1.sh"


    vm2.vm.provision "file", 
      source: "./conf/wp.conf", 
      destination: "/tmp/wp.conf"
  
    vm2.vm.provision "shell",
      inline: "mv /tmp/wp.conf /etc/apache2/sites-available/wp.conf"

  
    vm2.vm.provision "file", 
      source: "./conf/config-default.php", 
      destination: "/tmp/config-default.php"
  
    vm2.vm.provision "shell",
      inline: "mv /tmp/config-default.php /etc/wordpress/config-default.php"
    
    vm2.vm.provision "shell", inline: <<-SHELL
      a2dissite 000-default
      a2ensite wp
      systemctl reload apache2
    SHELL
  end

  # WWW.AKME.EUS
  config.vm.define "www.akme.eus" do |vm3|
    vm3.vm.hostname = "www.akme.eus"
    vm3.vm.box = "debian/contrib-jessie64"

    #vm3.vm.network "forwarded_port", guest: 80, host: 8080
    #vm3.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
    vm3.vm.network "private_network", ip: "192.168.33.30"
    # config.vm.network "public_network"

    vm3.vm.provision "file", source: "./conf/wp.sql", destination: "/home/vagrant/wp.sql"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    vm3.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
      vb.name = "www.akme.eus"
      vb.gui = false
      vb.memory = "512"
    end

    vm3.vm.provision "shell", run: "always", inline: <<-SHELL
      echo "Hello from www.akme.eus"
    SHELL

    vm3.vm.provision "shell", path: "server1.sh"


    vm3.vm.provision "file", 
      source: "./conf/wp.conf", 
      destination: "/tmp/wp.conf"
  
    vm3.vm.provision "shell",
      inline: "mv /tmp/wp.conf /etc/apache2/sites-available/wp.conf"

  
    vm3.vm.provision "file", 
      source: "./conf/config-default.php", 
      destination: "/tmp/config-default.php"
  
    vm3.vm.provision "shell",
      inline: "mv /tmp/config-default.php /etc/wordpress/config-default.php"
    
    vm3.vm.provision "shell", inline: <<-SHELL
      a2dissite 000-default
      a2ensite wp
      systemctl reload apache2
    SHELL
  end

  # DNS server
  config.vm.define "dns" do |vm4|
    vm4.vm.hostname = "dns"
    vm4.vm.box = "debian/contrib-jessie64"

    #vm1.vm.network "forwarded_port", guest: 80, host: 8080
    # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
    vm4.vm.network "private_network", ip: "192.168.33.40"
    # config.vm.network "public_network"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    vm4.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
      vb.name = "dns"
      vb.gui = false
      vb.memory = "512"
    end

    vm4.vm.provision "shell", run: "always", inline: <<-SHELL
      echo "Hello from DNS server"
    SHELL

    vm4.vm.provision "shell", path: "server2.sh"

    vm4.vm.provision "file", 
      source: "./dns/named.conf.options", 
      destination: "/tmp/named.conf.options"

    vm4.vm.provision "shell",
      inline: "mv /tmp/named.conf.options /etc/bind/named.conf.options"


    vm4.vm.provision "file", 
      source: "./dns/named.conf.local", 
      destination: "/tmp/named.conf.local"

    vm4.vm.provision "shell",
      inline: "mv /tmp/named.conf.local /etc/bind/named.conf.local"

    vm4.vm.provision "file", 
      source: "./dns/db.akme.eus", 
      destination: "/tmp/db.akme.eus"  

    vm4.vm.provision "shell",
      inline: "mv /tmp/db.akme.eus /etc/bind/db.akme.eus"

    vm4.vm.provision "file", 
      source: "./dns/db.192.168.33", 
      destination: "/tmp/db.192.168.33"

     vm4.vm.provision "shell",
      inline: "mv /tmp/db.192.168.33 /etc/bind/db.192.168.33"

    vm4.vm.provision "shell",
      inline: "named-checkconf"

    vm4.vm.provision "shell",
      inline: "named-checkzone akme.eus /etc/bind/db.akme.eus"
   
    vm4.vm.provision "shell",
      inline: "named-checkzone 33.168.192.in-addr.arpa /etc/bind/db.192.168.33"

    vm4.vm.provision "shell",
      inline: "systemctl restart bind9"

  end


end