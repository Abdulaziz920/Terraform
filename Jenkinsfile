pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('Access-key')
        AWS_SECRET_ACCESS_KEY = credentials('Secret-key')
    }
    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/Abdulaziz920/Terraform.git', branch: 'main'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -var-file=Environment.tfvars'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -var-file=Environment.tfvars -auto-approve'
            }
        }
    }
}









