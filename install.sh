#!/bin/bash

### Setup our environment
export DEBIAN_FRONTEND="noninteractive"

# Install dependencies
apt-get install -qy wget
#########################################
##             INSTALLATION            ##
#########################################

# Download

cd /tmp
wget http://www.med.uottawa.ca/Medtech/assets/files/VP_Server_12_2_20150905_Linux64.tar.gz
tar zxvf VP*.tar.gz

# Copy
mkdir -p /opt
mv /tmp/VPServer /opt

#########################################
##                 CLEANUP             ##
#########################################

# Clean APT install files
apt-get clean -y
rm -rf /var/lib/apt/lists/* /var/cache/* /var/tmp/* /tmp/*
