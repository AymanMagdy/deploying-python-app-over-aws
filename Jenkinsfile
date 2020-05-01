pipeline {
    agent any

    stages {

        stage('Cloning SCM') {
            steps {
                checkout scm
            }
        } 

        stage('Run unit testing..') {
            steps {
                sh "python3 App/tests/test.py"
            }
        }

        stage('Run the containers..') {
            steps {
                sh "docker-compose up -d"
            }
        }

        stage ('Run integration testing..') {
            steps{
                echo "In this stage we should apply the integration testing after running the containers."
            }
        }

        stage ('Run UAT testing..') {
            steps{
                echo "In this stage we should apply the integration testing after running the containers."
            }
        }

        stage('Deployment to Cloud') {
            steps {
                echo 'To SSH on the machine.'
                echo 'Clone the project on the machine.'
                echo 'Run docker-compose up command on the machine'
            }   
        }
    }
}
