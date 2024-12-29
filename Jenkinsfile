pipeline {
    agent any
    parameters {
        // Dropdown for selecting a branch
        choice(name: 'BRANCH', choices: ['main', 'perf', 'emerald'], description: 'Select the branch to build')
        // Dropdown for selecting an environment
        choice(name: 'ENV', choices: ['dev', 'qa', 'prod'], description: 'Select the environment to deploy')
    }
    stages {
        stage('Checkout') {
            steps {
                echo "Checking out branch: ${params.BRANCH}"
                // Checkout the specified branch
                git branch: params.BRANCH, url: 'https://github.com/hemachaitanya/hemachaitanya.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    echo "Running build for branch: ${params.BRANCH} in environment: ${params.ENV}"
                    // Pass both parameters to the build script
                    sh "./build.sh ${params.BRANCH} ${params.ENV}"
                }
            }
        }
    }
}
