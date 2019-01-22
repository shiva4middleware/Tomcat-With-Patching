#!/bin/sh
echo "Welcome to the pathcing automation script ..."
ps -ef|grep -i tomcat > /home/packt/tmp.txt
mkdir /tmp/compliance.backup
unlink current
mv /home/packt/apache-tomcat-8.5.33/ /tmp/compliance.backup/
wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.34/bin/apache-tomcat-8.5.34.tar.gz
tar -xvf apache-tomcat-8.5.34.tar.gz
ln -sfT /home/packt/apache-tomcat-8.5.34 current
rm -rf apache-tomcat-8.5.34.tar.gz /home/packt/apache-tomcat-8.5.33

echo "Completed the patching using automation script ..."
