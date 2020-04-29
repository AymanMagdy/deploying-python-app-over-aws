
pipeline {
    agent any

    stages {
        stage('Build the images stage') {
            steps {
                sh "docker-compose up /solving-devops-challenges --verbose"
            }
        }
        stage('Testing stage') {
            steps {
                echo 'Here will be the unit testing stage..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Here will deploy to AWS.'
            }   
        }
    }
}
