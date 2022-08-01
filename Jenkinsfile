pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building Docker Image..'

                sh 'docker build -t react:latest .'
                
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                echo 'bruh:'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'dockerHubPass')]) {
                    sh "docker login -u moomoo02 -p ${dockerHubPass}"
                }
                sh 'docker push react:latest'
            }
        }
    }
    // post {
    //     success {
    //         echo "Success!"
    //     }
    //     failture {
    //         echo "Failed :("
    //     }
    // }
}