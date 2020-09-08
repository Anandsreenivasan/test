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
        script {
          kubernetesDeploy(deleteResource: "true", configs: "nexus.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }

  }

}
