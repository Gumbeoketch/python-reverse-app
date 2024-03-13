# python-reverse-app
The repository contains source code for a simple python application that prints the origin public IP of any request it receives in reverse, a CICD template that builds and deploys the application on a docker image. 

How to Run 
Provision the instance to install Jenkins and docker in the ubuntu server using the terraform templates. Make sure to install Docker and Blue Ocean plugin in the Jenkins Server. 
To run the docker image independently use docker pull moketch/python-app:latest and run the python application.

<img width="1436" alt="image" src="https://github.com/Gumbeoketch/python-reverse-app/assets/48472370/cde222b7-3d98-4e73-9a0a-cb67f70ee456">

Secret and Misconfiguration Scanning
We will use truffle hog docker image in the Jenkins CICD pipeline to scan for secrets and output the file in a text file. We can include hard and soft fail for the findings.
For IAC misconfiguration, checkov will do scan in a bash script that will be pointed to the terraform folder in the repository.
