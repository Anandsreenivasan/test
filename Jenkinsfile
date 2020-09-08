pipeline {

  agent { label 'master' }

  stages {
    stage('Deploy App') {
      steps {
        script {
          kubernetesDeploy(deleteResource: "true", configs: "${env.AppName}.yaml", kubeconfigId: "mykubeconfig")
          kubernetesDeploy(configs: "${env.AppName}.yaml", kubeconfigId: "mykubeconfig")
        }
      }
    }

  }

}
