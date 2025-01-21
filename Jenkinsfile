pipeline {
  agent { dockerfile true }
  stages {
    stage('Deploy to Docker') {
      agent any
      steps {
        script {
          sh '''
            docker compose up --build -d
          '''
        }
      }
    }
  }

  post {
      always {
          echo "Cleaning up workspace..."
          cleanWs()
       }
  }
}
