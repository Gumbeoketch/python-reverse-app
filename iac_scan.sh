#!/bin/bash
#Bash script that user checkov docker image to scan for IAC misconfigurations
# Clone the repository containing Terraform files
git clone <github_repository_url> /tmp/terraform_files

# Run Checkov Docker image to scan Terraform files
docker run -v /tmp/terraform_files:/tf bridgecrew/checkov --directory /tf
