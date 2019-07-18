pipeline {
  agent {
    node {
      label 'maven'
    }
  }
  options {
    timeout(time: 10, unit: 'MINUTES')
  }
  stages {
    stage('Prebuild') {
      steps {
        echo "Building application ${env.APP_NAME} for ${env.DEV_PROJECT}"
        script {
          openshift.withCluster() {
            openshift.withProject() {
              echo "Using project ${openshift.project()}"
            }
          }
        }
      }
    }
    stage('Build Project') {
      steps {
        sh "mvn clean package"
      }
    }
    stage('Build Image') {
      steps {
        sh "cp target/*.war target/ROOT.war"
        script {
          openshift.withCluster() {
            openshift.withProject(env.DEV_PROJECT) {
              openshift.selector("bc", env.APP_NAME).startBuild("--from-file=target/ROOT.war", "--wait=true")
            }
          }
        }
      }
    }
  }
}