pipeline {
    agent any 
    stages {
        stage ('Initializng terraform') {
            steps { sh 'terraform init'}
        }
        stage ('Planning Terraform') {
            steps { sh 'terraform plan'}
        }
        stage ('Applying terraform') {
            steps { sh 'terraform apply'}
        }
    }
}