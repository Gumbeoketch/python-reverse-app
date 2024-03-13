# python-reverse-app
This is a simple python application that prints out the source of the request in reverse.
The application will be hosted on a VM that also has the CI server (Jenkins)
My assumption in this scenario is that the Dev team has not yet decided where to place the secret keys thus the secret scanning will point to the entire repository
I have put in two terraform files to provision the resource: one file has some bad practice - ssh keys placed within to show some true negatives during the scan and the other tf file which is in /script has no security bad practices
The Jenkins CICD also includes docker build and deployment in the Jenkins server. I opted to use trufflehogs for secret scanning in the pipeline
