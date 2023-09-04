#!/bin/bash
#################################
# Author: Santosh
# Date: 5th-July-2023
# version 1
# This code install Nexus in the ubuntu instances
##################################

sudo apt update -y
sudo apt install openjdk-17-jre -y
sudo cd /opt
sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
sudo tar -zxvf latest-unix.tar.gz
sudo mv /opt/nexus-3.30.1-01 /opt/nexus
sudo apt-get update
sudo systemctl start nexus

