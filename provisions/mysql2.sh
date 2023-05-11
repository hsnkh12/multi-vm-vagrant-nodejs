DATABASE_PASS='root'
sudo apt-get install mysql-server 
sudo service mysql start
sudo mysql -u root -p"$DATABASE_PASS" -e "CREATE DATABASE node_app_db; USE node_app_db; CREATE TABLE Counter( value INT AUTO_INCREMENT PRIMARY KEY);"

# sudo service firewall-cmd start
# sudo firewall-cmd --get-active-zones
# sudo firewall-cmd --zone=public --add-port=3306/tcp --permanent
# sudo firewall-cmd --reload
# sudo service firewall-cmd restart