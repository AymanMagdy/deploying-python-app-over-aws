pipeline {
    agent {
        label 'ubuntu'
    }
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

        stage ('Run integration testing..') {
            steps{
                echo "In this stage we should apply the integration testing after running the containers."
            }
        }

        stage ('Run UAT testing..') {
            steps{
                echo "In this stage we should apply the UAT testing."
            }
        }

        stage('Clone to updated version to AWS') {
            steps {
                sh "./clone_repo.sh"
            }   
        }

        stage('Start the contaniers on AWS') {
            steps {
                sh "docker-compose -f ~/python-app-production/solving-devops-challenges/docker-compose.yml up -d"
            }   
        }
    }

    
}
