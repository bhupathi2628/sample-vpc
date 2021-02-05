pipeline{
    agent any
    stages{
        stage('git Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/bhupathi2628/sample-vpc.git'
            }
        }
        stage('terrafrom init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('terrafrom plan'){
            steps{
                sh 'terraform plan'
            }
        }
        stage('terrafrom apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
        stage('terrafrom destroy'){
            steps{
                sh 'terraform destroy --auto-approve'
            }
        }
    }
}
