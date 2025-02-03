pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'github-token', url: 'https://github.com/Kimjohoon/CI-CD_test.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ci_cd_test_image .'
            }
        }
        stage('Deploy Container') {
            steps {
                sh '''
                docker stop ci_cd_test_container || true
                docker rm ci_cd_test_container || true
                docker run -d -p 8080:80 --name ci_cd_test_container ci_cd_test_image
                '''
            }
        }
    }
}
