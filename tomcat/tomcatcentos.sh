sudo yum install -y tomcat tomcat-webapps tomcat-admin-webapps tomcat-docs-webapp tomcat-javadoc lynx wget
sudo systemctl start tomcat
sudo mv /usr/share/tomcat/conf/tomcat-users.xml /usr/share/tomcat/conf/tomcat-users.xml.bak
sudo wget https://raw.githubusercontent.com/roybhaskar9/samplejava/master/tomcat-users-centos.xml -O /usr/share/tomcat/conf/tomcat-users.xml
sudo systemctl restart tomcat
