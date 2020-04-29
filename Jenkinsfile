
pipeline {
    agent any

    stages {
        stage('Run the containers..') {
            steps {
                sh "docker-compose -df /home/aymansoliman/Desktop/AymanData/Work/ITI/Intake40/solving-devops-challenges/docker-compose.yml up "
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
