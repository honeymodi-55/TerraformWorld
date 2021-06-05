pipeline {
    agent any 
    stages {
        stage ('Initializng terraform') {
            steps { 
                withAWS(credentials: 'jenkins-terraform-user', region: 'ca-centreal-1'){
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply'
                }
            }
        }
    }
}