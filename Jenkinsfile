pipeline {
  environment {
    registry = “ashwini25/sample-app”
    registryCredential = ‘docker-hub-credentials’
    dockerImage = ‘’
  }
  agent any
  stages {
    stage(‘Cloning Git’) {
      /*lets make sure we have right repo*/
      checkout scm
    }
    stage(‘Building image’) {
      steps{
        script {
          dockerImage = docker.build registry + “:$BUILD_NUMBER”
        }
      }
    }
    stage(‘Deploy Image’) {
      steps{
        script {
          docker.withRegistry( ‘’, registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
  }
}
