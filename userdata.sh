#!/bin/bash

sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get install apache2 -y

sudo systemctl restart apache2

sudo sh -c "echo 127.0.0.1 www.vhost1.com >> /etc/hosts"

sudo sh -c "echo 127.0.0.1 www.vhost2.com >> /etc/hosts"

sudo mkdir -p /var/www/vhost_1/public_html

sudo mkdir -p /var/www/vhost_2/public_html

sudo chown -R $USER:$USER /var/www/vhost_1/public_html

sudo chown -R $USER:$USER /var/www/vhost_2/public_html

sudo chmod -R 755 /var/www

sudo echo "Webpage from: Virtual Host 1." > /var/www/vhost_1/public_html/index.html

sudo echo "Webpage from: Virtual Host 2." > /var/www/vhost_2/public_html/index.html

sudo cp /home/ubuntu/vhosts.conf /etc/apache2/sites-available/vhosts.conf

sudo a2ensite vhosts.conf

sudo a2dissite 000-default.conf

sudo systemctl restart apache2
