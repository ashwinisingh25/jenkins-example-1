pipeline {
    agent any
    stages {
        stage('myStage'){
            steps {
                sh 'ls -la'
		echo 'Hello World' 
            }
        }
        stage('Build') {
            steps { 
                sh 'ls' 
            }
        }
    }
}
