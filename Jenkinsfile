pipeline {
    agent any  // Specify where the pipeline will run, 'any' means any available agent

    stages {
        stage('CI App') {
            agent { dockerfile true }
            steps {
                echo "CI Complete"
            }
        }

        stage('Deploy to Docker') {
            steps {
                script {
                    // Verify Docker version
                    sh 'docker compose up --build -d'
                }
            }
        }
    }
}
