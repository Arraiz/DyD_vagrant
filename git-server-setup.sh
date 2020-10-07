#sudo apt-get update -y
#sudo apt install git-all -y
#sudo adduser git
#su git
#cd ~
mkdir .ssh && chmod 700 .ssh
touch .ssh/authorized_keys && chmod 600 .ssh/authorized_keys
#ssh-keygen -f id_rsa -t rsa -N ''
#ssh-copy-id 

#/etc/ssh/sshd_config

#sed -i 's/#PasswordAuthentication.*/PasswordAuthentication no/' /etc/ssh/sshd_config




sudo adduser dev --disabled-password >> /dev/null
echo "dev:dev" | sudo chpasswd

sed -i 's/#PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
service ssh restart