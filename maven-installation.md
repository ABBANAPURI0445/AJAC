## Maven Installation

wget https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz

tar -xvzf apache-maven-3.3.9-bin.tar.gz

sudo mv apache-maven-3.3.9 /opt

export M2_HOME=/opt/apache-maven-3.3.9

export M2=$M2_HOME/bin

export PATH=$M2:$PATH

source ~/.bashrc


docker cp 410f2a01abc3:/vprofile-project/target/vprofile-v2.war .