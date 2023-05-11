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

su hassan

sudo apt update
sudo apt-get install nodejs -y
sudo apt-get install npm -y
# rm -rf /usr/local/{lib/node{,/.npm,_modules},bin,share/man}/npm*
# hash -r
#sudo apt install docker.io
cp -r /vagrant/node_app .
cd node_app
sudo npm install pm2
pm2 start app.js
