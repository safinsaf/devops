pipeline {
    agent {
        docker {
            image 'python:3.8'
            args '-u root -v $HOME/.cache:/root/.cache -v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    stages {
        stage('Build infrastructure') {
            steps {
                echo 'Building..'
                sh '''
                    cd app_python
                    pip install -r requirements_dev.txt
                '''
                sh  'apt-get update && apt-get install -y docker.io'

            }
        }

        stage('Lint and test'){
            steps {
                parallel(
                    'Lint': {
                         dir('app_python') {
                             // sh "isort --diff --check-only ./"
                             sh "python -m black --check --diff ./"
                         }
                    },
                    'Test': {
                         dir('app_python') {
                             sh "pytest"
                         }
                    }
                )
            }
        }
        stage('build') {
            steps {
                dir('app_python') {
                    script {
                        def image = docker.build('safinsaf/devops_app_python:latest', '-f ./Dockerfile .')
                        docker.withRegistry('', 'docker-hub-token') {
                            image.push()
                        }
                    }
                }
            }
        }
    }
}

