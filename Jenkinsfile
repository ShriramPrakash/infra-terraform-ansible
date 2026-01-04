pipeline {
    agent any
stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
stage('Configure Server using Ansible') {
            steps {
                sh 'cd ansible && ansible-playbook -i inventory playbook.yml'
            }
        }
    }
}
