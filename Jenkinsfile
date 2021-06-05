pipeline {
    agent any 
    stages {
        stage ('Initializng terraform') {
            steps { 
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: "jenkins-terraform-user",
                    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
                    secretKeyVariable: "AWS_SECRET_ACCESS_KEY"
                ]]){
                    sh 'access_key=${AWS_ACCESS_KEY_ID}'
                    sh 'secret_key=${AWS_SECRET_ACCESS_KEY}'
                    sh 'echo $access_key'
                    sh 'terraform init'
                    sh 'terraform plan'
                }
                }
            }
        }
    }