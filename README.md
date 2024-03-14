# python-reverse-app
The repository contains source code for a simple python application that prints the origin public IP of any request it receives in reverse, a CICD template that builds and deploys the application on a docker image. 

How to Run 
1. From the terraform folder, run my-python-app.tf file to provision the resources which also includes a bash file run.sh that will install Jenkins and Docker in the server.
2. Log into the jenkins at $yourIP:8080, install all recommended plugins plus docker and blue ocean plugins
3. To run the docker image independently use docker pull moketch/python-app:latest and run the python application.
4. The CICD pipeline is in the Jenkines file that includes secrets scanning using truffle hog docker image, docker build and docker run for the app.py container
5. An additional script folder that includes terraform file to just provision an ubuntu without the generated keys (take-home and take-home) in the other terraform folder. Reason was to have a security true positive when scanning for secrets
6. The scripts folder includes the run.sh file to install Jenkins and Docker after provisioning
7. For IAC scanning, I used checkov docker image in iac_scan.sh file

<img width="1436" alt="image" src="https://github.com/Gumbeoketch/python-reverse-app/assets/48472370/cde222b7-3d98-4e73-9a0a-cb67f70ee456">

