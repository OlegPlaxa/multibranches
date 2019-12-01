pipeline { 
    agent {
        label 'master'
    } 
    stages {
        stage('Clone repository') { 
            steps { 
                git url: 'git@github.com:OlegPlaxa/github_repository.git'
            }
        }
        stage('Checking repository'){
            steps { 
                sh "ls -la"
            }
        }
        stage('Testing ansible role') {
            steps {
                sh '''
                cd $(ls|grep 08)/roles/check_role
				molecule lint > test.log
                '''
            }
        }
        stage('Outout results test') {
            steps {
                sh "cat test.log"
            }
		stage('Delete files') {
            steps {
                deleteDir()
            }
        }
    }
}