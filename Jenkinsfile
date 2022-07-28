pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'

                script {
                    int test = 5 + 5;
                    println(test);
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
}