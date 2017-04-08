#!/usr/bin/sudo bash
# Pleas ensure your current database have a database named 'mysql'. Otherwise, can't refresh.

# The username and password of MYSQL
username=root
password=user

sudo mkdir /var/www/refreshdb.com
sudo mkdir /var/www/refreshdb.com/public_html

sudo cp index.php_backup index.php
sudo sed -i 's/root/'"$username"'/g' index.php
sudo sed -i 's/user/'"$password"'/g' index.php
sudo cp index.php /var/www/refreshdb.com/public_html/
sudo cp refreshdb.com.conf /etc/apache2/sites-enabled/ 

sudo mysqldump -u"$username" -p"$password" --all-databases > /var/www/refreshdb.com/public_html/allBackup.sql

sudo service apache2 restart
