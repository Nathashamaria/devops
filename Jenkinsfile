pipeline {
    agent any

    tools {
        nodejs 'NodeJS-22'
    }

    stages {
        stage('Install Dependencies') {
            steps {
                dir('welcom-react') {
                    sh 'npm install'
                }
            }
        }

        stage('Build React App') {
            steps {
                dir('welcom-react') {
                    sh 'npm run build'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t react-app .'
            }
        }
    }
}
