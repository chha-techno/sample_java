#!/bin/bash

cd /home/ubuntu/javapp
sudo apt-get install -y openjdk-8-jre
sudo apt-get install tar
sudo apt-get install wget
wget http://mirrors.advancedhosters.com/apache/tomcat/tomcat-8/v8.5.58/src/apache-tomcat-8.5.58-src.tar.gz
sudo mkdir /opt/tomcat
sudo tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
cd /opt/tomcat
sed -i 's|port="8080"|port="80"|g' /opt/tomcat/config/server.xml
ls -ltrh /home/ubuntu/javapp/
ls -ltrh /opt/tomcat/
mv /home/ubuntu/javapp/sample_webapp.war //opt/tomcat/webapps/
