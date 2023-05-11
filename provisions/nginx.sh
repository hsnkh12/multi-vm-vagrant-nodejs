# adding repository and installing nginx		
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
sudo apt install nginx -y

sudo cat <<EOT > node_app_config

server {

  listen 80;

location / {

  proxy_pass http://192.168.56.5:80;

}

}

EOT

sudo mv node_app_config /etc/nginx/sites-available/node_app
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/sites-available/node_app /etc/nginx/sites-enabled/node_app

#starting nginx service and firewall
sudo service nginx restart
