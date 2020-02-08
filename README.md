This repository contains three folders:

jenkinsserver  folder contains files to setup a server with Jenkins, Sonarqube, Maven, Nexus all as integrated one solution by leveraging puppet based installations of the tools

- Vagrantfile is the code which can be used to bring up a server on Vagrant with minimum required hardware specification for hosting the tools

- .pp files will install respective tools when called in by setup.sh

- selenium.sh installs and configures selenium on same server

- setup.sh call all the files to install the whole setup on any ubuntu 16.04 server (launched through vagrant or not)

Instruction: Create a Ubuntu 16.04 server with minimum 3 GB RAM and run the setup.sh in root terminal to install all products

tomcat folder consists files to install tomcat on new blank servers

samplejava folder contains a sample java project to do the CICD on it by using Jenkins

- tomcat-users-centos.xml is used by https://github.com/studynine/jenkins/blob/master/tomcat/tomcatcentos.sh to setup tomcat on centos machines

- tomcat-users-ubuntu.xml is used by https://github.com/studynine/jenkins/blob/master/tomcat/tomcatubuntu.sh to setup tomcat on ubuntu machines

- settings.xml is used by https://github.com/studynine/jenkins/blob/master/jenkinsserver/setup.sh for setting up maven to be used with Nexus and Sonarqube

- pom.xml defines project definition to be used by maven

- seleniumtest.py can be used for testing deployments of this project on tomcat

- https://github.com/studynine/jenkins/blob/master/samplejava/src/main/webapp/index.jsp is the file to be tested by seleniumtest.py

Instructions:

put up the samplejava folder as a java code repository on github

create a code pull job to periodically poll samplejava repo

create a build job with build step maven top level target goal 'package' to show how build is done

create a build job with build step maven top level target goal 'sonar:sonar' to show how sonarqube can be used for code quality analysis

create a job with build step maven top level target goal 'install' to show maven repo for package version control in /var/lib/jenkins/.m2

create a job with build step maven top level target goal 'deploy' to show how nexus can be used for storing the package in version control with timestamp

At this time the pipeline should look like gitpull -> build -> sonarCQA -> localmavenstorage -> nexuspackagestorage 

install build pipeline plugin and create a pipeline for showing all above jobs in sequence as a CI pipeline

install "deploy to container" plugin

create another vm of ubuntu 16.04 and install tomcat using scripts in https://github.com/studynine/jenkins/tree/master/tomcat

create job for showing how build step shell script can be used for downloading packages from nexus url through wget and then post build step deploy to container can be used for deploying the downloaded war file into a tomcat server

create 3 jobs for tomcat deployment in 3 tomcat context paths /dev /test /prod on the same tomcat server

put these 3 jobs in sequence after nexus job in CI pipeline so that the new pipeline becomes:

gitpull -> build -> sonarCQA -> localmavenstorage -> nexuspackagestorage -> deploy2dev -> deploy2test -> deploy2prod

Now install python plugin in jenkins

create a job in jenkins with build step as 'execute python script'

put content of seleniumtest.py in the build step python section

change url to appropriate url for test context path of tomcat

run job to see that the code fails and job also fails

change the python code if condition from Hello Java2 to Hello Java

run job to see that the code succeeds and job succeeds

put the job in pipeline between deploy2test and deploy2prod

if selenium job fails then deployment does not happen to production

if selenium job succeeds then deployment happens to production
