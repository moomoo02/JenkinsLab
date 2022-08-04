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
        stage('Deploy to Dockerhub') {
            steps {
                echo 'Pushing docker image to DockerHub...'
                withCredentials([string(credentialsId: 'dockerhub-pass', variable: 'dockerHubPass')]) {
                    sh "docker login -u moomoo02 -p ${dockerHubPass}"
                }
                sh 'docker push moomoo02/demo-app'
            }
        }
        stage('Deploy to AWS') {
            steps {
                echo 'Deploying to AWS...'

                //def dockerRun = 'docker run -p 3000:3000 -d -name demo-app moomoo02/demo-app'
                sshagent(['vince']) {
                    sh "ssh -o StrictHostKeyChecking=no root@45.79.157.189"
                    sh 'docker run -p 3000:3000 -d -name demo-app moomoo02/demo-app'
                    // sh "ssh -o StrictHostKeyChecking=no root@198.74.61.62 ${dockerRun}"
                }
                
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