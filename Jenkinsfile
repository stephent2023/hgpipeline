pipeline {
  agent any
  stages {
    stage('version') {
      steps {
        sh 'python3 --version'
        git clone -b dev https://github.com/Weaverbeaver/Hugo || true
        pip install streamlit
      }
    }
    stage('hello') {
      steps {
        sh 'python3 hello.py'
      }
    }
  }
}
