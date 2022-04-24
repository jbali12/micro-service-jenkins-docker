pipeline {
    agent any
    tools {
       maven 'Maven'
    }
    stages{
        stage('build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/eureka-server']], extensions: [], userRemoteConfigs: [[credentialsId: '21da60f2-8557-4e84-822e-43ac0491fcd9', url: 'https://github.com/jbali12/micro-service-jenkins-docker.git']]])
                sh "mvn -Dmaven.test.failure.ignore-true clean package"

            }
        }
        
        
        stage('build Docker Image'){
            steps{
                script {
                    sh 'docker build -t jbalialoui/eureka-server .'

                }
                
            }
        }
        
        stage('Push Docker Image'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'jbalialoui', variable: 'dockerhubpwd')]) {
                        
                        sh 'docker login -u jbalialoui -p ${dockerhubpwd}'
                    }
                    
                    sh 'docker push jbalialoui/eureka-server'

                }
            }
        }
    }
}
