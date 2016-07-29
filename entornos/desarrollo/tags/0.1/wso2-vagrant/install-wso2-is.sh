#!/bin/bash
#Generacion DOCKER WSO2-IS
PRODUCT_WSO2="wso2is"
VERSION_WSO2="5.1.0"
HOME="/home/vagrant"

cd $HOME/wso2-dockerfiles-1.0.0/common/provision/default/files/
sudo wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/identity-server/5.1.0/wso2is-5.1.0.zip
cd $HOME/wso2-dockerfiles-1.0.0/$PRODUCT_WSO2
sudo cp $HOME/wso2-suite/dockerfiles/$PRODUCT_WSO2/* $HOME/wso2-dockerfiles-1.0.0/$PRODUCT_WSO2
sudo cp $HOME/wso2-suite/scripts/$PRODUCT_WSO2/* $HOME/wso2-dockerfiles-1.0.0/$PRODUCT_WSO2
sudo ./build.sh -v $VERSION_WSO2
sudo rm $HOME/wso2-dockerfiles-1.0.0/common/provision/default/files/$PRODUCT_WSO2-$VERSION_WSO2.zip


