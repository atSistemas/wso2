mkdir software
cd ./software
sudo wget https://github.com/wso2/dockerfiles/releases/download/v1.0.0/wso2-dockerfiles-1.0.0.zip
sudo unzip wso2-dockerfiles-1.0.0.zip
cd wso2-dockerfiles-1.0.0
cd common/provision/default/files/
sudo curl -L -O -H "Cookie: oraclelicense=accept-securebackup-cookie" -k "https://edelivery.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz"
sudo wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/api-manager/1.10.0/wso2am-1.10.0.zip
sudo wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/identity-server/5.1.0/wso2is-5.1.0.zip
sudo wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/data-services-server/3.5.0/wso2dss-3.5.0.zip
sudo wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/data-analytics-server/3.0.1/wso2das-3.0.1.zip
sudo wget --user-agent="testuser" --referer="http://connect.wso2.com/wso2/getform/reg/new_product_download" http://product-dist.wso2.com/products/enterprise-service-bus/4.9.0/wso2esb-4.9.0.zip

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list'
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-get install -y docker-engine

sudo apt-get update
sudo apt-get install -y linux-image-extra-$(uname -r)
sudo apt-get update
sudo apt-get install -y docker-engine
sudo service docker restart

