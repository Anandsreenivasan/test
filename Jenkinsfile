pipeline {

  agent { label 'master' }

  stages {

    stage('Checkout Source') {
      steps {
        git url:'https://github.com/Anandsreenivasan/test.git', branch:'master'
      }
    }

    stage('Deploy ${env.AppName}') {
      steps {
        script {
          kubernetesDeploy(deleteResource: "true", configs: "${env.AppName}.yaml", kubeconfigId: "mykubeconfig")
          kubernetesDeploy(configs: "${env.AppName}.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }

  }

}
