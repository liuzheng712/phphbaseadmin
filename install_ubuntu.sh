#!/bin/bash
sudo apt-get update -y
sudo apt-get install python-pip python-dev build-essential -y
sudo apt-get install lamp-server^ -y
#sudo pip install --upgrade pip
#curl -O http://python-distribute.org/distribute_setup.py
#sudo python distribute_setup.py
#curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
#sudo python get-pip.py


sudo pip install cherrypy
#sudo pip install cherrypy
#sudo pip install cherrypy
#sudo pip install cherrypy

cd /var/www/html
sudo git clone https://github.com/liuzheng712/phphbaseadmin --depth 1
sudo chown www-data\: phpbaseadmin -R
cd phphbaseadmin/cherrypy
python2 zookeeperadmin.py start
echo "All done.open http://your_ip/phphbaseadmin from your web browser"
