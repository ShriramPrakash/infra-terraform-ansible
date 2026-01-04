pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "ap-south-1"
    }

    stages {

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Apply (Non-blocking)') {
    steps {
        catchError(buildResult: 'SUCCESS', stageResult: 'SUCCESS') {
            timeout(time: 5, unit: 'SECONDS') {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}


        stage('Configure Server using Ansible') {
            steps {
                sh 'cd ansible && ansible-playbook -i inventory playbook.yml'
            }
        }
    }
}

