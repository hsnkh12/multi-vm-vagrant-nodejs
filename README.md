# Multi-machine nodeJS infrastructure as a code

Vagrant is a tool for creating and managing virtual environments. It allows you to define and configure your development environment as code, and then spin up a virtual machine with all the required software and dependencies installed. Node.js, on the other hand, is a popular JavaScript runtime environment used for building server-side applications.
Using Vagrant with Node.js, you can easily set up and manage your development environment. With Vagrant's infrastructure as code (IaC) approach, you can define your environment in a simple text file (Vagrantfile) and automate the process of creating and configuring your virtual machine. This ensures consistency across your team's development environments, making it easier to collaborate and work on the same codebase.

## Infrastructure
The system consists of three main components. nodeJS server, nginx, and mysql database. Each one of those components is in a seperated ubuntu virtual machine with it's own environment. The nginx acts as a reversed proxy to the nodeJS server (it recieves requests from the client, and passes it to the nodeJS server), and the nodeJS server communicates with mysql database. Vagrant is reposnsible to automate this infrastructure.


## How to use 

- Install vagrant and virtualbox on your machine
- Clone the repo
```
git clone https://github.com/hsnkh12/multi-vm-vagrant-nodejs
```
- Get inside the directory, and run
```
vagrant up
```
- Now the virtual machines are being created by Vagrant, it may take some time.
- After the virtual machines are ready, ssh into mysql vm to configure database
```
vagrant ssh mysql
```
- Now you are in mysql vm, run a bash script in provision folder to auto config mysql
```
bash /vagrant/provision/mysql2.sh
```
- Now your infrastructure should be ready, to test it, go to your browser and hit a request to 
```
http://192.168.56.6
```


