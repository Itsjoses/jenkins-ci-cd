pipeline {
    agent any  // Specify where the pipeline will run, 'any' means any available agent

    stages {
        stage('Deploy to Docker') {
            steps {
                script {
                    sh 'docker --version'
                }
            }
        }
    }
}
