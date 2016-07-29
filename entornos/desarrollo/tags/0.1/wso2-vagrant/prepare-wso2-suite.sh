#!/bin/bash
PRODUCT_WSO2="docker-wso2"
HOME="/home/vagrant"

cd $HOME
sudo wget https://github.com/wso2/dockerfiles/releases/download/v1.0.0/wso2-dockerfiles-1.0.0.zip
sudo unzip wso2-dockerfiles-1.0.0.zip
sudo rm wso2-dockerfiles-1.0.0.zip
cd wso2-dockerfiles-1.0.0/common/provision/default/files/
sudo cp $HOME/wso2-suite/scripts/$PRODUCT_WSO2/* $HOME/wso2-dockerfiles-1.0.0/common/scripts
sudo cp $HOME/wso2-suite/services/* /etc/init.d/
sudo chmod 775 /etc/init.d/wso2*
sudo curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "https://edelivery.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz"
