pipeline {
    agent any
    parameters {
        // Parameter for selecting branch
        string(name: 'BRANCH_NAME', defaultValue: 'main', description: 'Branch to build')
        
        // Parameter for selecting environment
        choice(name: 'ENVIRONMENT', choices: ['dev', 'qa', 'prod'], description: 'Environment to deploy')
    }
    stages {
        stage('Checkout') {
            steps {
                echo "Checking out branch: ${params.BRANCH_NAME}"
                // Checkout the selected branch
                git branch: "${params.BRANCH_NAME}", url: 'https://github.com/hemachaitanya/hemachaitanya.git'
            }
        }
        stage('Deploy to Environment') {
            steps {
                echo "Deploying to environment: ${params.ENVIRONMENT}"
                // Example command based on selected environment
                script {
                    if (params.ENVIRONMENT == 'dev') {
                        echo "Deploying to Development environment"
                        // Add dev-specific deployment steps here
                    } else if (params.ENVIRONMENT == 'qa') {
                        echo "Deploying to QA environment"
                        // Add QA-specific deployment steps here
                    } else if (params.ENVIRONMENT == 'prod') {
                        echo "Deploying to Production environment"
                        // Add prod-specific deployment steps here
                    }
                }
            }
            stage('working'){
                steps{
                    sh 'pwd'
                }
            }
        }
        // Additional stages for build, test, or deploy if necessary
    }
}
