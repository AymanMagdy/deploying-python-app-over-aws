
pipeline {
    agent any

    stages {
        stage('Build the images stage') {
            steps {
                sh "git clone https://github.com/AymanMagdy/solving-devops-challenges.git"
                sh "docker-compose up /solving-devops-challenges"
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