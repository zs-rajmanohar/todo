pipeline {
  agent any

  stages {

    stage('download dependencies') {
      steps {
        sh '''
          npm install
        '''
      }
    }

    stage('prepare artifacts') {

      steps {
        sh '''
          zip -r todo.zip *
        '''
      }
    }

    stage('upload artifacts') {

      steps {
        sh '''
          curl -v -u admin:admin123 --upload-file todo.zip http://localhost:8081/repositories/todo/todo.zip
        '''
      }
    }
  }
}
