Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  
### APP vm  ####
  config.vm.define "nodeapp" do |node_app|
    node_app.vm.box = "ubuntu/trusty64"
    node_app.vm.hostname = "nodeapp"
    node_app.vm.network "private_network", ip: "192.168.56.5"
    node_app.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    node_app.vm.provision "shell", path: "provisions/node_app.sh"  

  end
  
### Nginx VM ###
config.vm.define "nginx" do |rev_proxy|
  rev_proxy.vm.box = "ubuntu/trusty64"
  rev_proxy.vm.hostname = "nginx"
  rev_proxy.vm.network "private_network", ip: "192.168.56.6"
  rev_proxy.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end
  rev_proxy.vm.provision "shell", path: "provisions/nginx.sh"  
end

### DB VM ###
config.vm.define "mysql" do |mysql|
  mysql.vm.box = "ubuntu/trusty64"
  mysql.vm.hostname = "mysql"
  mysql.vm.network "private_network", ip: "192.168.56.7"
  mysql.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end
  mysql.vm.provision "shell", path: "provisions/mysql.sh"  
  end
  
end
