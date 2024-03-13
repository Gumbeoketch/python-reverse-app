#!/bin/bash
#download the provision script from my repo for Ubuntu server
#This script installs Jenkins and Docker 
wget https://raw.githubusercontent.com/Gumbeoketch/python-reverse-app/master/terraform/run.sh
chmod +x run.sh
./run.sh
