pipeline {

    agent any

    environment {
        dockerImage =''
        registry = 'moketch/image_name'
        registryCredential ='dockerhub_id'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Gumbeoketch/python-reverse-app.git']])
                
            }

        }

        stage('Build Docker Image'){
            steps {
                script {
                    dockerImage = docker.build registry
                    
                }
            }
        }
       stage ('Upload to Dockerhub')
        steps {
            script {
                    docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                
            }
        }
    }
}
    
