sudo apt-get install -y maven tree
mkdir ~/mavenproject
cd ~/mavenproject

mvn archetype:generate
-DgroupId = com.companyname.bank 
-DartifactId = consumerBanking 
-DarchetypeArtifactId = maven-archetype-quickstart 
-DinteractiveMode = false

cd consumerbanking
tree
mvn validate
tree
mvn compile
tree
mvn package
tree
mvn install
tree
cd ~/.m2
tree
cd ~/mavenproject/consumerbanking
tree
#mvn deploy can be executed after changing pom.xml by copying distribution management section of https://github.com/roybhaskar9/samplejava/blob/master/pom.xml 
#(from line 20 t 31 into this pom.xml after the dependencies section and before the build section



