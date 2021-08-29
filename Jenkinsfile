pipeline {
    agent {
        docker { image 'python:3.8-slim-buster' }
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
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

