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
                sh 'docker build -t my-jenkins-app .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:80 --name my-running-app my-jenkins-app'
            }
        }
    }
}

