# python-reverse-app
The repository contains source code for a simple python application that prints the origin public IP of any request it receives in reverse, a CICD template that builds and deploys the application on a docker image. 

How to Run 
Provision the instance to install Jenkins and docker in the ubuntu server using the terraform templates. Make sure to install Docker and Blue Ocean plugin in the Jenkins Server. 
To run the docker image independently use docker pull moketch/python-app:latest and run the python application.
