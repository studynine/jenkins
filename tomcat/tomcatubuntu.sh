sudo apt-get update
sudo apt-get -y install tomcat7 tomcat7-admin lynx
mv /etc/tomcat7/tomcat-users.xml /etc/tomcat7/tomcat-users.xml.bak
wget https://raw.githubusercontent.com/roybhaskar9/samplejava/master/tomcat-users-ubuntu.xml -O /etc/tomcat7/tomcat-users.xml
sudo service tomcat7 restart
