pipeline {

  agent { label 'kubejenkins_node' }

  stages {

    stage('Checkout Source') {
      steps {
        git url:'https://github.com/Anandsreenivasan/test.git', branch:'master'
      }
    }

    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(configs: "nexus.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }

  }

}
