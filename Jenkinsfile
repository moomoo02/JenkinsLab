pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'

                sh 'docker build -t react:latest .'
                retry(3){
                    sh 'node --version'
                }
                
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