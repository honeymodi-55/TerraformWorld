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
                    sh 'terraform init'
                    sh 'terraform plan -var access_key=${AWS_ACCESS_KEY_ID} -var secret_key=${AWS_SECRET_ACCESS_KEY} -out Outputforplan'
                    sh 'terraform apply -var access_key=${AWS_ACCESS_KEY_ID} -var secret_key=${AWS_SECRET_ACCESS_KEY} -input=false Outputforplan'
                }
                }
            }
        }
    }