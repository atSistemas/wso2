#!/bin/bash
#Generacion DOCKER WSO2-DAS
PRODUCT_WSO2="wso2das"
VERSION_WSO2="3.0.1"
HOME="/home/vagrant"

cd $HOME/wso2-dockerfiles-1.0.0/common/provision/default/files/
sudo wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/data-analytics-server/3.0.1/wso2das-3.0.1.zip
cd $HOME/wso2-dockerfiles-1.0.0/$PRODUCT_WSO2
sudo cp $HOME/wso2-suite/dockerfiles/$PRODUCT_WSO2/* $HOME/wso2-dockerfiles-1.0.0/$PRODUCT_WSO2
sudo cp $HOME/wso2-suite/scripts/$PRODUCT_WSO2/* $HOME/wso2-dockerfiles-1.0.0/$PRODUCT_WSO2
sudo ./build.sh -v $VERSION_WSO2
sudo rm $HOME/wso2-dockerfiles-1.0.0/common/provision/default/files/$PRODUCT_WSO2-$VERSION_WSO2.zip


