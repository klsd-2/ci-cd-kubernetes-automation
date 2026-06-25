pipeline {
    agent any

    environment {
        IMAGE_NAME = "flask-app"
        ECR_REPO = "123456789012.dkr.ecr.ap-south-1.amazonaws.com/flask-app"
        AWS_REGION = "ap-south-1"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${IMAGE_NAME} ./application'
            }
        }

        stage('Tag Docker Image') {
            steps {
                sh 'docker tag ${IMAGE_NAME}:latest ${ECR_REPO}:latest'
            }
        }

        stage('Push Image to ECR') {
            steps {
                sh '''
                aws ecr get-login-password --region ${AWS_REGION} | \
                docker login --username AWS --password-stdin 123456789012.dkr.ecr.ap-south-1.amazonaws.com

                docker push ${ECR_REPO}:latest
                '''
            }
        }

        stage('Deploy Using Helm') {
            steps {
                sh '''
                helm upgrade --install flask-app ./helm/flask-app
                '''
            }
        }
    }
}
