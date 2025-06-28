pipeline {
    agent any
    // agent { label 'ubuntu-latest' }

    // triggers {
    //     // Poll SCM as a rough equivalent for push/pull_request trigger
    //     pollSCM('* * * * *') // Optional: adjust or remove as needed
    // }

    options {
        skipDefaultCheckout(true)
    }

    stages {
        stage('Checkout Repo') {
            steps {
                checkout scm
            }
        }

        // stage('Set Up Node.js') {
        //     tools {
        //         nodejs 'NodeJS 22.x' // Assumes Node.js is configured as a tool in Jenkins
        //     }
        // } // Not needed if Node.js is already installed on the agent

        stage('Build (Install dependencies)') {
            steps {
                // sh 'npm ci' // Use sh for shell commands(linux/mac)
                bat 'npm ci' // Use bat for Windows
            }
        }

        stage('Run Integration tests') {
            steps {
                // sh 'npm test'
                bat 'npm test'
            }
        }
    }
}