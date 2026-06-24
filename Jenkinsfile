pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git branch: 'main',
                    url: 'git@github.com:Rishikvashu/kafka-automation.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir('Terraform-codes') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir('Terraform-codes') {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('Terraform-codes') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('Terraform-codes') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
