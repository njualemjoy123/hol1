pipeline {
    agent any
    tools {
        maven 'M2_HOME'
    }
    triggers {
  pollSCM '* * * * *'
}

    stages {
       
         stage('build') {
            steps {
                echo 'Hello build'
                sh 'mvn clean'
                sh 'mvn install'
                sh 'mvn package'
            }
        }
         stage('test') {
            steps {
                sh 'mvn test'
                
            }
        }
         stage('build and publish image') {
            steps {
                script {
                    checkout scm
                    docker.withRegistry('', 'DockerRegistryID') {
                        def customImage = docker.build("amstrongnju/hol1-pipeline:${env.BUILD_ID}")
                        def customImage1 = docker.build("amstrongnju/hol1-pipeline")
                        customImage.push()
                        customImage1.push()
                    }
                }
                
            }
        }
        
    }
}

