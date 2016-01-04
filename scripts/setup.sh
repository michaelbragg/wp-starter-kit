#!/bin/sh
#
# Setup the environment

# Copy site .conf file accross
sudo cp /vagrant/config/environments/development.conf /etc/apache2/sites-available/wordpress.dev.conf
sudo rm -rf /var/www
sudo mkdir -p /var/www
sudo ln -fs /vagrant /var/www/wordpress.dev
# Enable new virtual host
sudo ln -fs /etc/apache2/sites-available/wordpress.dev.conf /etc/apache2/sites-enabled/wordpress.dev.conf
# Restart Apache
sudo service apache2 restart
# Setup database
mysql -u root -proot -e "create database wordpress"
#mysql -u root -proot wordpress < /vagrant/config/bootstrap.sql
# Install Composer Dependencies
php /usr/local/bin/composer.phar update --working-dir="/var/www/wordpress.dev" --no-interaction
# Node
npm -v
#npm install --prefix /var/www/wordpress.dev
