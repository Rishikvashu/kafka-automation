pipeline {

agent any

parameters {

    choice(
        name: 'ACTION',
        choices: ['apply', 'destroy'],
        description: 'Choose Terraform Action'
    )

}

environment {

    TF_DIR = 'Terraform-codes'

}

stages {

    stage('Clone Repo') {

        steps {

            echo "Cloning GitHub Repository..."

            git branch: 'main',
                url: 'git@github.com:Rishikvashu/kafka-automation.git'
        }
    }

    stage('Terraform Init') {

        steps {

            dir("${TF_DIR}") {

                sh '''
                terraform init
                '''
            }
        }
    }

    stage('Terraform Validate') {

        steps {

            dir("${TF_DIR}") {

                sh '''
                terraform validate
                '''
            }
        }
    }

    stage('Terraform Plan') {

        steps {

            dir("${TF_DIR}") {

                sh '''
                terraform plan
                '''
            }
        }
    }

    stage('Terraform Action') {

        steps {

            dir("${TF_DIR}") {

                script {

                    if (params.ACTION == 'apply') {

                        echo "Creating Kafka Infrastructure..."

                        sh '''
                        terraform apply -auto-approve
                        '''

                    } else {

                        echo "Destroying Kafka Infrastructure..."

                        sh '''
                        terraform destroy -auto-approve
                        '''

                    }
                }
            }
        }
    }
}

post {

    success {

        echo "Pipeline Executed Successfully"
    }

    failure {

        echo "Pipeline Failed"
    }

    always {

        echo "Pipeline Execution Finished"
    }
}

}
