pipeline {
    stages {
        stage('CI App') {
            agent { dockerfile true }
            steps {
                // Sample shell command for CI check
                sh 'echo "CI Complete"'
            }
        }

        stage('Deploy to Docker') {
            agent any  // This means any available agent can be used here
            steps {
                script {
                    // Verify Docker version
                    sh 'docker --version'
                }
            }
        }
    }

    post {
        always {
            echo "Cleaning up workspace..."
            cleanWs()  // Clean up the workspace after the build
        }
    }
}
