pipeline {
  stages {
    stage('CI App'){
      agent {dockerfile true}
      steps{
        sh 'CI Complete'
      }
    }
    stage('Deploy to Docker') {
      agent any
      steps {
        script {
          sh '''
            docker --version
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
