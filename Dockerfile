FROM centos:7

maintainer naveen

run yum -y install python36

run pip3 install --upgrade pip

run pip3 install tensorflow

run pip3 install keras

run pip3 install numpy

run pip3 install pandas 
 
run pip3 install pillow

run yum -y install  httpd

add origin.py   /var/www/cgi-bin/

run chmod 777  /var/www/cgi-bin/origin.py

add .bashrc  /root/

cmd python3 /var/www/cgi-bin/origin.py
