pipeline {
    agent any
 
    stages {
        stage('Clone Repository') {
            steps {
                    sh 'rm -rf *'  // Clean the workspace
                    sh 'git clone -b main https://github.com/abhilashkalathil/jenkins-docker-integration.git'
                    sh 'ls -la'  // Check if files are present
            }
        }
        stage('Build Docker Image') {
            steps {
 
                dir('jenkins-docker-integration') 
                {  // Change to the cloned directory

                    sh 'docker buildx build -t my-jenkins-app .'

                }
 
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker ps'
                sh 'docker run -d -p 8081:80 --name my-running-app-working my-jenkins-app'
            }
        }
    }
}

