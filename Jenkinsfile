pipeline {
    
     agent any
     
     environment {
         dockerImage = ''
         registry = 'bhavyakp/example'
         registryCredential = 'bhavya'
     }
     
     stages {
         stage('Checkout'){
             steps{
                 checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Bhavyakp321/Example.git']])
             }
         }
         
         stage('Build DockerImage'){
             steps {
                 script {
                     dockerImage = docker.build registry               
                 }
             }
         }
         
         stage('Push DockerImage'){
             steps {
                 script {
                      docker.withRegistry('', registryCredential) {
                      dockerImage.push()
                        }
                    }
               }
           }
         stage('Run DockerImage'){
           steps {
               script {
                   sh 'docker run ${registry}'
                }
            }
        }
     }
}

