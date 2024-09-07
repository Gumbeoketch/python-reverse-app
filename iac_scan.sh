#!/bin/bash
#Bash script that user checkov docker image to scan for IAC misconfigurations
# Clone the repository containing Terraform files
pip3 install checkov
checkov --directory terraform >scan.txt
#iac scan output 
#working???