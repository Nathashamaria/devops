pipeline {
    agent any

    tools {
        nodejs 'NodeJS-18'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Nathashamaria/devops.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                dir('welcom-react') {
                    bat 'npm install'
                }
            }
        }

        stage('Build React App') {
            steps {
                dir('welcom-react') {
                    bat 'npm run build'
                }
            }
        }
    }

    post {
        success {
            echo 'Build successful'
        }
        failure {
            echo 'Build failed'
        }
    }
}
