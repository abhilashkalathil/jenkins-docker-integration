pipeline {
    agent any
 
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/abhilashkalathil/jenkins-docker-integration.git'
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

