pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                // Checkout code từ branch main của repo
                git branch: 'main', url: 'https://github.com/quymye1202/testCI_CD.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image với tag: testci_cd:latest
                    dockerImage = docker.build("testci_cd:latest")
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    // Chạy container từ image vừa build, mapping port 8081 trên host tới port 80 trong container
                    dockerImage.run("-d -p 8081:80")
                }
            }
        }
    }
}
