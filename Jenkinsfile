pipeline {
    agent any 
    stages {
        stage ('Initializng terraform') {
            steps { 
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: "jenkins-terraform-user",
                    access_key: 'AWS_ACCESS_KEY_ID',
                    secret_key: "AWS_SECRET_ACCESS_KEY"
                ]]){
                    sh 'terrform plann'
                }
                }
            }
        }
    }
}