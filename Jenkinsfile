pipeline {
  agent { dockerfile true }
  stages {
    stage('Deploy to Docker') {
      steps {
        sh '''
          docker compose up --build -d
        '''
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
