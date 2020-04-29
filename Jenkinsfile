
pipeline {
    agent any

    stages {
        stage('Build the images stage') {
            steps {
                sh "sudo docker-compose up"
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