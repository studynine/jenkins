# jenkins
For Jenkins, use Ubuntu 16.04

For Tomcat, use CentOS 7

In CentOS 7, wget is not there by default. So first you need to do "yum install -y wget" and then download this script using wget

# tomcat 8
curl "http://admin:admin@192.168.33.30:8080/manager/undeploy?path=/dev"
curl --upload-file target/javaee7-simple-sample.war "http://admin:admin@192.168.33.30:8080/manager/deploy?path=/dev"

# tomcat 7
curl "http://admin:admin@192.168.33.30:8080/manager/text/undeploy?path=/dev"
curl --upload-file target/javaee7-simple-sample.war "http://admin:admin@192.168.33.30:8080/manager/text/deploy?path=/dev"

#tomcat7 uses /manager/text/undeploy and /manager/text/deploy paths

#tomcat6-admin (debian) or tomcat6-admin-webapps (rhel) has to be installed 
#tomcat-users.xml has to be setup with user that has admin, manager and manager-script roles
