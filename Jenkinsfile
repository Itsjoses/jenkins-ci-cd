pipeline {
    agent any  // Specify where the pipeline will run, 'any' means any available agent

    stages {
        stage('Deploy to Docker') {
            agent { dockerfile true }
            steps {
                script {
                    sh 'docker --version'
                }
            }
        }
    }
}
