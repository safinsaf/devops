pipeline {
    agent {
        docker {
            image 'python:3.8'
            args '-u root'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh '''
                    cd app_python
                    pip install -r requirements_dev.txt
                '''

            }
        }
        stage('Lint') {
             steps {
                 dir('app_python') {
                     sh "python -m black --check --diff ./"
                     sh "isort --diff --check-only ./"
                 }
             }
         }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

