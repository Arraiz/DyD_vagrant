sudo apt-get update -y
sudo apt install git -y
apt-get install expect -y
sudo adduser git
su git
cd ~
mkdir .ssh && chmod 700 .ssh
touch .ssh/authorized_keys && chmod 600 .ssh/authorized_keys
ssh-keygen -f id_rsa -t rsa -N ''



sudo adduser dev --disabled-password 
echo "dev:dev" | sudo chpasswd


sudo adduser test --disabled-password 
echo "test:test" | sudo chpasswd


sudo adduser es --disabled-password 
echo "es:es" | sudo chpasswd


#add to sudduers file
usermod -aG sudo udev
usermod -aG sudo utest
usermod -aG sudo ues

git init --bare "/home/udev/udevrepo"
git init --bare "/home/utest/utestrepo"
git init --bare "/home/ues/uesrepo"

chown -R dev "/home/udev/udevrepo/"
chown -R test "/home/utest/utestrepo/"
chown -R es "/home/ues/uesrepo/"

chmod 704 "/home/udev/udevrepo/"
chmod 704 "/home/utest/utestrepo/"
chmod 704 "/home/ues/uesrepo/"

sed -i 's/#PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
service ssh restart


#create all users
