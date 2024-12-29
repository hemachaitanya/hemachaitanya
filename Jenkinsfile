pipeline {
    agent any
    parameters {
        choice(name: 'ENV', choices: ['dev', 'qa', 'prod'], description: 'Select the environment to build for')
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://your-repo-url.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    echo "Running build for ${params.ENV}"
                    sh "./build.sh ${params.ENV}"
                }
            }
        }
    }
}
