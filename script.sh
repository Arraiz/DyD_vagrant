echo "####INSTALING LAS COSAS####"
apt update
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
apt install wordpress curl apache2 mysql-server -y