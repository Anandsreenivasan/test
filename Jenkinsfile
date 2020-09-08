pipeline {

  agent { label 'master' }

  stages {

    stage('Checkout Source') {
      steps {
        git url:'https://github.com/Anandsreenivasan/test.git', branch:'master'
      }
    }

    stage('Deploy App') {
      steps {
        container('kubectl') {
          sh("kubectl get ns nexus kubeconfigId: "mykubeconfig")
            }
      }
    }

  }

}
