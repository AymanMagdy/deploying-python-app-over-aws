
pipeline {
    agent any

    stages {
        stage('Run the containers..') {
            steps {
                sh "docker-compose -f '${env.DOCKER_COMPOSE_PATH}' up -d"
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
