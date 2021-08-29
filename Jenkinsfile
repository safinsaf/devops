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
                 withEnv(["HOME=${env.WORKSPACE}"]) {
                     dir('app_python') {
                         sh "python -m black --check --diff ./"
                         echo "${env.HOME}
                         // sh '''
                         // #   env.PATH="${env.NODEJS_HOME};${env.PATH}"
                         // '''
                         sh "isort --diff --check-only ./"
                     }
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

