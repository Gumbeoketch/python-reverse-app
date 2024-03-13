#!/bin/bash
#Bash script that user checkov docker image to scan for IAC misconfigurations
# Clone the repository containing Terraform files
git clone https://github.com/Gumbeoketch/python-reverse-app.git > /tmp/terraform_files
# Run Checkov Docker image to scan Terraform files
docker run --rm -v /tmp/terraform_files:/tf bridgecrew/checkov:latest checkov -d /tf -o json > checkov_results.json
