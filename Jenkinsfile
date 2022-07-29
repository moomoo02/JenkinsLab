pipeline {
    agent {
        docker {
            image 'react:latest'
        }
    }

    stages {
        stage('SCM')
        stage('Build') {
            steps {
                echo 'Building..'

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