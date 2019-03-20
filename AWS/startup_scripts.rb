#!/bin/bash
#get admin privilages
sudo su

#install httpd
yum update -y
yum update -y httpd24
service httpd start
chkconfig httpd on
