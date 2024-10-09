#!/bin/bash

# add folder java,mc
cd /home/ecs-user
mkdir java minecraft
cd /home/ecs-user/java

# download and unzip java 23
wget https://download.oracle.com/java/23/latest/jdk-23_linux-x64_bin.tar.gz
sudo tar -xzvf jdk-23_linux-x64_bin.tar.gz
cd /home/ecs-user/java/jdk-23/

# add profile and source
sudo -- bash -c 'echo "export JAVA_HOME=/home/ecs-user/java/jdk-23" >> /etc/profile'
sudo -- bash -c 'echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile'
source /etc/profile

# test java version
java -version

# download mc package
cd /home/ecs-user/minecraft
wget https://piston-data.mojang.com/v1/objects/59353fb40c36d304f2035d51e7d6e6baa98dc05c/server.jar

java -Xmx1024M -Xms1024M -jar server.jar nogui

# vim eula.txt
# vim server.properties

# java -Xmx1024M -Xms1024M -jar server.jar nogui
