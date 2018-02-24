#/bin/sh
sudo apt-get update
sudo apt-get upgrade -y
pwd= < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-12};
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password ${pwd}'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password ${pwd}'
sudo apt-get install -y python apache2 libapache2-mod-php7.0 php7.0 php7.0-mysql mysql-server
