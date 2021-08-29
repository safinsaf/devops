pipeline {
    agent {
        docker { image 'python:3.8' }
    }

    stages {
        stage('Build') {
            steps {
                withEnv(["HOME=${env.WORKSPACE}"]) {
                    echo 'Building..'
                    sh '''
                        cd app_python
                        pip install -r requirements_dev.txt
                    '''
                }
            }
        }
        stage('Lint') {
            steps {
                dir('app_python') {
                   sh "isort --diff --check-only ./"
                   sh "python -m black --check --diff ./"
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

