#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.9.0.129388.zip
unzip sonarqube-26.9.0.129388.zip
yum install java-17-amazon-corretto -y
useradd sonar
chown sonar:sonar sonarqube-26.9.0.129388 -R
chmod 777 sonarqube-26.9.0.129388 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-26.9.0.129388/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
