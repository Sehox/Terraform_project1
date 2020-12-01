#!/bin/bash 

# Download and install Java 8 /Payara 5.193     

# echo -e "\n------------------\n"
# echo -e "| Downloading Java |"
# echo -e "\n------------------\n"
# sudo apt update -qqq > /dev/null && echo "[+] Update done ."
# sudo apt install -qqq  unzip zip >/dev/null && echo "[+] Install zip,unzip done ."
# mkdir Java && cd Java 
# JavaLink="http://scriptuser:D0wnloAd_Us3r@54.37.115.248:8081/repository/internal/java_install/jdk-8u201/8/jdk-8u201-8.gz"
# wget -q --show-progress $JavaLink
# JceLink="http://scriptuser:D0wnloAd_Us3r@54.37.115.248:8081/repository/internal/java_install/jce_policy/8/jce_policy-8.zip"
# wget -q --show-progress $JceLink
# #################################################################################
echo -e "\n-----------------\n"
echo -e "| Installing Java |"
echo -e "\n-----------------\n"

sudo mkdir /opt/jdk
sudo  tar  jdk-8u271-linux_x64.tar.gz -C /opt/jdk
sudo ls /opt/jdk
echo -e "\n--------------------------\n"
echo -e "| Update Alternative Java |"
echo -e "\n--------------------------\n"

#update alternatives - make sure environment points to a valid install if you are replacing...
sudo update-alternatives --install "/usr/bin/java" "java" "/opt/jdk/jdk1.8.0_271/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk/jdk1.8.0_271/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/jdk/jdk1.8.0_271/bin/javaws" 1
sudo update-alternatives --config java
 
#check JDK by looking in the /etc/alternatives/ directory
# cd 
ls -lrt  /etc/alternatives/java*
 
#this is optionally since we will add everything to the PATH variable (i usually don't use this):
sudo update-alternatives --install "/usr/bin/apt" "apt" "/opt/jdk/jdk1.8.0_271/bin/apt" 1
sudo update-alternatives --install "/usr/bin/idlj" "idlj" "/opt/jdk/jdk1.8.0_271/bin/idlj" 1
sudo update-alternatives --install "/usr/bin/jarsigner" "jarsigner" "/opt/jdk/jdk1.8.0_271/bin/jarsigner" 1
sudo update-alternatives --install "/usr/bin/java-rmi.cgi" "java-rmi.cgi" "/opt/jdk/jdk1.8.0_271/bin/java-rmi.cgi" 1
sudo update-alternatives --install "/usr/bin/javadoc" "javadoc" "/opt/jdk/jdk1.8.0_271/bin/javadoc" 1
sudo update-alternatives --install "/usr/bin/javah" "javah" "/opt/jdk/jdk1.8.0_271/bin/javah" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/jdk/jdk1.8.0_271/bin/javaws" 1
sudo update-alternatives --install "/usr/bin/jconsole" "jconsole" "/opt/jdk/jdk1.8.0_271/bin/jconsole" 1
sudo update-alternatives --install "/usr/bin/jdb" "jdb" "/opt/jdk/jdk1.8.0_271/bin/jdb" 1
sudo update-alternatives --install "/usr/bin/jinfo" "jinfo" "/opt/jdk/jdk1.8.0_271/bin/jinfo" 1
sudo update-alternatives --install "/usr/bin/jps" "jps" "/opt/jdk/jdk1.8.0_271/bin/jps" 1
sudo update-alternatives --install "/usr/bin/jsadebugd" "jsadebugd" "/opt/jdk/jdk1.8.0_271/bin/jsadebugd" 1
sudo update-alternatives --install "/usr/bin/jstat" "jstat" "/opt/jdk/jdk1.8.0_271/bin/jstat" 1
sudo update-alternatives --install "/usr/bin/jvisualvm" "jvisualvm" "/opt/jdk/jdk1.8.0_271/bin/jvisualvm" 1
sudo update-alternatives --install "/usr/bin/native2ascii" "native2ascii" "/opt/jdk/jdk1.8.0_271/bin/native2ascii" 1
sudo update-alternatives --install "/usr/bin/pack200" "pack200" "/opt/jdk/jdk1.8.0_271/bin/pack200" 1
sudo update-alternatives --install "/usr/bin/rmic" "rmic" "/opt/jdk/jdk1.8.0_271/bin/rmic" 1
sudo update-alternatives --install "/usr/bin/rmiregistry" "rmiregistry" "/opt/jdk/jdk1.8.0_271/bin/rmiregistry" 1
sudo update-alternatives --install "/usr/bin/serialver" "serialver" "/opt/jdk/jdk1.8.0_271/bin/serialver" 1
sudo update-alternatives --install "/usr/bin/tnameserv" "tnameserv" "/opt/jdk/jdk1.8.0_271/bin/tnameserv" 1
sudo update-alternatives --install "/usr/bin/wsgen" "wsgen" "/opt/jdk/jdk1.8.0_271/bin/wsgen" 1
sudo update-alternatives --install "/usr/bin/xjc" "xjc" "/opt/jdk/jdk1.8.0_271/bin/xjc" 1
sudo update-alternatives --install "/usr/bin/appletviewer" "appletviewer" "/opt/jdk/jdk1.8.0_271/bin/appletviewer" 1
sudo update-alternatives --install "/usr/bin/extcheck" "extcheck" "/opt/jdk/jdk1.8.0_271/bin/extcheck" 1
sudo update-alternatives --install "/usr/bin/jar" "jar" "/opt/jdk/jdk1.8.0_271/bin/jar" 1
sudo update-alternatives --install "/usr/bin/javafxpackager" "javafxpackager" "/opt/jdk/jdk1.8.0_271/bin/javafxpackager" 1
sudo update-alternatives --install "/usr/bin/javap" "javap" "/opt/jdk/jdk1.8.0_271/bin/javap" 1
sudo update-alternatives --install "/usr/bin/jcmd" "jcmd" "/opt/jdk/jdk1.8.0_271/bin/jcmd" 1
sudo update-alternatives --install "/usr/bin/jcontrol" "jcontrol" "/opt/jdk/jdk1.8.0_271/bin/jcontrol" 1
sudo update-alternatives --install "/usr/bin/jhat" "jhat" "/opt/jdk/jdk1.8.0_271/bin/jhat" 1
sudo update-alternatives --install "/usr/bin/jmap" "jmap" "/opt/jdk/jdk1.8.0_271/bin/jmap" 1
sudo update-alternatives --install "/usr/bin/jrunscript" "jrunscript" "/opt/jdk/jdk1.8.0_271/bin/jrunscript" 1
sudo update-alternatives --install "/usr/bin/jstack" "jstack" "/opt/jdk/jdk1.8.0_271/bin/jstack" 1
sudo update-alternatives --install "/usr/bin/jstatd" "jstatd" "/opt/jdk/jdk1.8.0_271/bin/jstatd" 1
sudo update-alternatives --install "/usr/bin/keytool" "keytool" "/opt/jdk/jdk1.8.0_271/bin/keytool" 1
sudo update-alternatives --install "/usr/bin/orbd" "orbd" "/opt/jdk/jdk1.8.0_271/bin/orbd" 1
sudo update-alternatives --install "/usr/bin/policytool" "policytool" "/opt/jdk/jdk1.8.0_271/bin/policytool" 1
sudo update-alternatives --install "/usr/bin/rmid" "rmid" "/opt/jdk/jdk1.8.0_271/bin/rmid" 1
sudo update-alternatives --install "/usr/bin/schemagen" "schemagen" "/opt/jdk/jdk1.8.0_271/bin/schemagen" 1
sudo update-alternatives --install "/usr/bin/servertool" "servertool" "/opt/jdk/jdk1.8.0_271/bin/servertool" 1
sudo update-alternatives --install "/usr/bin/unpack200" "unpack200" "/opt/jdk/jdk1.8.0_271/bin/unpack200" 1
sudo update-alternatives --install "/usr/bin/wsimport" "wsimport" "/opt/jdk/jdk1.8.0_271/bin/wsimport" 1
# sudo update-alternatives --config java
 
#setting JAVA_HOME and AS_JAVA globally for all users (only for bash)
sudo echo -e "export JAVA_HOME=/opt/jdk/jdk1.8.0_271\nexport PATH=$PATH:$JAVA_HOME/bin:$GLASSFISH_HOME/bin" >> /etc/bash.bashrc
#append the following lines:
# export GLASSFISH_HOME=/home/glassfish
 
#setting JAVA_HOME ans AS_JAVA for everyone (best place for setting env vars globally)
sudo echo -e "JAVA_HOME=/opt/jdk/jdk1.8.0_271\nAS_JAVA=/opt/jdk/jdk1.8.0_271" >> /etc/environment
#append the following lines:
#check JDK by looking in the /etc/alternatives/ directory...
# cd 
ls -lrt /etc/alternatives/java*

echo -e "\n--------------------\n"
echo -e "\n| Enable Security |\n"
echo -e "\---------------------\n"
echo -e "TLS :"
sudo echo -e "jdk.tls.disabledAlgorithms=SSLv3, RC4\njdk.tls.ephemeralDHKeySize=2048" >> /opt/jdk/jdk1.8.0_271/jre/lib/security/java.security
# echo -e "JCE :"

# sudo mv /opt/jdk/jdk1.8.0_271/jre/lib/security/local_policy.jar /opt/jdk/jdk1.8.0_271/jre/lib/security/local_policy.jar.bak
# sudo mv /opt/jdk/jdk1.8.0_271/jre/lib/security/US_export_policy.jar /opt/jdk/jdk1.8.0_271/jre/lib/security/US_export_policy.jar.bak
# # sudo update-alternatives --display java
# # sudo update-alternatives --display javac

# #upload jce to ubuntu server via scp (assuming you have scp, else upload somehow else...)
# #(replace myuser with your ubuntu user and ipAddressOfUbuntuServer with the ip address of you ubuntu server)
# scp ~/Downloads/jce_policy-8.zip myuser@ipAddressOfUbuntuServer:downloads
# #now the archive is on the ubuntu server at /home/myuser/downloads
#  
# #now we execute the next commands on the ubuntu server
# #first, backup old files
# sudo mv /usr/lib/jvm/jdk1.8.0/jre/lib/security/local_policy.jar /usr/lib/jvm/jdk1.8.0/jre/lib/security/local_policy.jar.bak
# sudo mv /usr/lib/jvm/jdk1.8.0/jre/lib/security/US_export_policy.jar /usr/lib/jvm/jdk1.8.0/jre/lib/security/US_export_policy.jar.bak
#  
# #now copy local_policy.jar and US_export_policy.jar to /usr/lib/jvm/jdk1.8.0/jre/lib/security/
# cd ~/downloads
# sudo unzip ./jce_policy-8.zip
# sudo cp ./UnlimitedJCEPolicyJDK8/local_policy.jar /usr/lib/jvm/jdk1.8.0/jre/lib/security/
# sudo cp ./UnlimitedJCEPolicyJDK8/US_export_policy.jar /usr/lib/jvm/jdk1.8.0/jre/lib/security/
# sudo chgrp -R root /usr/lib/jvm/jdk1.8.0/jre/lib/security
# sudo chown -R root /usr/lib/jvm/jdk1.8.0/jre/lib/security
# # echo -e "\n-----------------------------------\n"

java -version
