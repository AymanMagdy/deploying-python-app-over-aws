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

        stage('Clone to AWS') {
            steps {
                sh "cd ~/python-app-production"
                sh "rm -rf ~/python-app-production/*"
                sh "git clone https://github.com/AymanMagdy/solving-devops-challenges.git"
            }   
        }
    }

    agent {
        label 'ubuntu'
    }

    stages{
        stage('Deployment to AWS') {
            steps {
                sh "cd ~/python-app-production"
                sh "rm -rf ~/python-app-production/*"
                sh "git clone https://github.com/AymanMagdy/solving-devops-challenges.git"
                sh "docker-compose -f ~/python-app-production/solving-devops-challenges/docker-compose.yml up -d"
                sh "exit"
            }   
        }
    }
}
