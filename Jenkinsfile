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
                echo "In this stage we should apply the UAT testing."
            }
        }

        stage('Deployment to AWS') {
            steps {
                sh "ssh ubuntu@3.83.138.168"
                sh "cd ~/python-app-production"
                sh "rm -rf *"
                sh "git clone https://github.com/AymanMagdy/solving-devops-challenges.git"
                sh "docker-compose up -d"
                sh "exit"
            }   
        }
    }
}
