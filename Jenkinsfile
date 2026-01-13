pipeline {
    agent any

    tools {
        nodejs 'NodeJS-18'
    }

    stages {
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
