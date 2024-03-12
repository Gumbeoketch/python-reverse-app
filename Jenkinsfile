pipeline {

    agent any

    environment {
        dockerImage =''
        registry = 'moketch/python-app'
        registryCredential ='dockerhub_id'
    }

    stages {
        stage('Checkout') {
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Gumbeoketch/python-reverse-app.git']])
                
            }

        }

        stage('Check for Secrets'){
            steps{
                sh 'rm trufflehog || true'
                sh 'docker pull gesellix/trufflehog'
                sh 'docker run -t gesellix/trufflehog --json https://github.com/Gumbeoketch/python-reverse-app.git > trufflehog'
                sh 'cat trufflehog'
            }
        }

        stage('Build Docker Image'){
            steps{
                script {
                    dockerImage = docker.build registry
                    
                }
            }
        }
       stage ('Upload to Dockerhub'){
        steps{
            script {
                    docker.withRegistry( '', registryCredential ) {
                    dockerImage.push()
                
            }
        }
    }
}
}
}
    
