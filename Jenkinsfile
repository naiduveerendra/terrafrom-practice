pipeline {
  agent none
  stages {
    stage('Dev') {
      steps {
        sh '''pipeline {
  agent any
  stages {
    stage(\'Cmake configure\') {
      steps {
        echo \'Hello World\'
      }
    }
  }
}'''
        }
      }

    }
  }