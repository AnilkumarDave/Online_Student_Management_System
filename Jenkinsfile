pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Run Automation Tests') {
            steps {
                dir('automation') {
                    sh 'gradle test'
                }
            }
        }
    }

    post {
        always {
            junit 'automation/build/test-results/test/*.xml'
        }
    }
}
