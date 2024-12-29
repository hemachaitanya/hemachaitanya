pipeline {
    agent any
    parameters {
        // Dropdown to select the branch
        choice(name: 'BRANCH', choices: ['main', 'perf', 'emerald'], description: 'Select the branch to build')
        // Dropdown to select the environment
        choice(name: 'ENV', choices: ['dev', 'qa', 'prod'], description: 'Select the environment to deploy')
    }
    stages {
        stage('Checkout') {
            steps {
                echo "Checking out branch: ${params.BRANCH}"
                git branch: params.BRANCH, url: 'https://your-repo-url.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    echo "Running build for branch: ${params.BRANCH} in environment: ${params.ENV}"
                    sh "./build.sh ${params.BRANCH} ${params.ENV}"
                }
            }
        }
    }
}
