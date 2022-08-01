pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building Docker Image..'

                sh 'docker build -t moomoo02/demo-app .'
                
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
                echo 'Pushing docker image to DockerHub...'
                withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'dockerHubPass')]) {
                    sh "docker login -u moomoo02 -p ${dockerHubPass}"
                }
                sh 'docker push moomoo02/demo-app'
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