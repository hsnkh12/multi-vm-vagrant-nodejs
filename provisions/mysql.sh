sudo -i
adduser hassan
addgroup devops
usermod -aG sudo hassan 
usermod -aG devops hassan
mkdir /devopsDIR
chown hassan:devops /devopsDIR
chmod 770 /devopsDIR

for user in /home/*
do
echo "set number
inoremap jj <Esc>" > "$user/.vimrc"
done
sudo apt update

#sudo apt update
#sudo apt-get install mysql-server 
# sudo service mysql start
# sudo mysqladmin -u root password "$DATABASE_PASS"
# sudo mysql -u root -p"$DATABASE_PASS" -e "CREATE DATABASE node_app_db; USE node_app_db; CREATE TABLE Counter( value INT AUTO_INCREMENT PRIMARY KEY);"