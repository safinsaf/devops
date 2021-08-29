pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Build2') {
            steps {
                sh 'make'
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
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

